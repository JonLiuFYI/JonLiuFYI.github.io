---
title: Using a Toolbx container and Just to manage a Jekyll environment
tags: howto github-pages jekyll toolbx containers
---

*Toolbx* containers make tool setup less messy. *Just* shortcuts complex commands. Here's how to use them to make Jekyll site development more manageable.

<!--more-->

## Background
This is a follow-up to an older blog post I wrote about [how to set up the environment for a Jekyll site on Fedora]({% post_url 2020-08-31-jekyll-fedora %}). In it, I alluded to the possibility of doing the setup in a [Toolbx](https://containertoolbx.org/) container. That has some convenient benefits, and I'm not the first person to realize that.

[Cassidy James Blaede independently described the setup process for it](https://cassidyjames.com/blog/github-pages-jekyll-fedora-silverblue/). On top of that, I started using [Just](https://github.com/casey/just) in my site repo to make running useful Jekyll commands easier.

This article assumes that you already have a repository with a Jekyll site. If not, start one first ([GitHub Pages setup, for example](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll)).

## Why Toolbx?
In that previous article I wrote about setting up Jekyll, I described the steps to setting it up directly on the host system, which has some consequences:

* It can pollute your home directory, adding lots of Ruby gems and putting executables like `bundle` on your PATH. I personally don't use Ruby outside of generating Jekyll sites, so I find it annoying.
* It's a more fragile setup prone to breaking, since it's tied to your system's package updates and can inadvertently depend on the specific state of your host system.

I had my Jekyll environment break once because upgrading to a new version of Fedora also upgraded the system Ruby installation from 2.7 to 3. I wouldn't have had to deal with fixing that if I kept that environment in a container.

Wait. Things breaking when a version 2.7 becomes 3? This sounds kind of like Python!
{:.info}

But why use Toolbx to containerize a Jekyll environment? Because it's simpler than using Podman or Docker. Toolbx uses Podman containers under the hood, but presents an easier to use interface meant for holding local development tools, and there's no need to deal with mapping volumes and ports or fiddling with SELinux.

## Setup steps
Cassidy James Blaede has set up a Toolbx container for Jekyll site development and describes the process in [a blog post of his own.](https://cassidyjames.com/blog/github-pages-jekyll-fedora-silverblue/) Follow those steps, including adding `webrick` to the site's Gemfile.

Note about GitHub Pages: according to [the list of dependencies](https://pages.github.com/versions/) for GitHub Pages, it still uses Ruby 2.7 (as of writing). Despite that, installing a more modern Ruby version (like 3.1) in the container seems to work fine.
{:.info}

## Post-setup bonus: a justfile
With the essential packages installed in the Toolbx container, it's now possible to generate and serve the Jekyll site right away: enter the container with `toolbox enter`, then run `bundle exec jekyll serve`.

But that's a bit verbose and takes two lines of commands. To shortcut this process, you can use [Just](https://github.com/casey/just) and include a justfile in the site repository that runs both in one stroke.

1. Install Just on your local system *and* inside the Toolbx container. For example, on Fedora:
	``` bash
	# Remember: run 'toolbox enter' first to install inside the container
	sudo dnf install just
	```

	The in-container copy is needed if a Just recipe calls another recipe, which my justfile excerpt (shown later) does.
	{:.info}

2. Install a glibc locale package inside the container for… [locale-related reasons](#locales). On Fedora:
	```bash
	sudo dnf install glibc-langpack-en
	```

3. Create a file called `justfile` at the base of the site repo. Put this in it:
	```
    # [default] Start the DEFAULT toolbox and serve the site within it
    start:
        toolbox run just serve

    # Serve the site
    serve:
        bundle exec jekyll serve
	```
	<p xmlns:dct="http://purl.org/dc/terms/" xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#">
  	<a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
	<img src="http://i.creativecommons.org/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
	</a>
	<br />
	To the extent possible under law, <a rel="dct:publisher" href="https://jon.liu.fyi"><span property="dct:title">Jon Liu</span></a> has waived all copyright and related or neighboring rights to <span property="dct:title">the above example Toolbx-Jekyll justfile</span>. This work is published from: <span property="vcard:Country" datatype="dct:ISO3166" content="CA" about="https://jon.liu.fyi">Canada</span>.</p>

> ### Optional side note: locales
> {:#locales}
> 
> What was up with that part about installing a glibc langpack in the container?
> 
> It turns out that trying to build and serve the site using the container by running
> 
>	toolbox run bundle exec jekyll serve
>	# the justfile example defines a shortcut for this long incantation
> 
> leads to a locale- and text encoding-related error like this:
> 
>	jekyll 3.9.2 | Error:  Invalid US-ASCII character "\xE2" on line 5
> 
> [Installing a glibc langpack](https://discussion.fedoraproject.org/t/how-to-set-the-locales-in-a-toolbox/31182/6) solves the issue and lets that one-liner command work properly. It seems the environment inside the Toolbx container doesn't come with a properly set locale.

## Finally: Generate the site from the Toolbx container
With the justfile created, you can now build the site using one Just command instead of having to use `toolbox enter` then `bundle exec jekyll serve`.

Run `just` or `just start` to run the topmost recipe of the justfile. The `start` recipe runs the `serve` recipe from within the container.

From here, you can add more Just recipes for other common commands you run while developing a Jekyll site.