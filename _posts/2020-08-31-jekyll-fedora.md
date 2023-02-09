---
title: How to set up Jekyll for GitHub Pages in Fedora
tags: jekyll fedora github-pages howto
---

The quick guide to something that should be really simple, but just isn't for some reason.
<!--more-->

**Update Feb 2023:** the way I set up Jekyll for site development has changed since this article. [Check out how I do it now]({% post_url 2023-02-08-jekyll-toolbx %}).
{:.info}

## Background
In this article, I'll explain how to set up a Jekyll site under Fedora, ready for GitHub Pages as a personal site under your GitHub username. I can confirm that this works in Fedora 31 and 32.

Setting up this website (hosted by GitHub Pages and powered by Jekyll) was a real pain for me. Jekyll and GitHub both have their own separate quick-start guides that don't agree exactly on details, split instructions across multiple interlinked pages, and still refer to the other for some instructions. Sometimes, they're missing information entirely, which I had to figure out myself.

## What you'll need
* Fedora as your operating system, obviously
* Competence with terminal commands
* Knowledge of basic git operations

## Get the software
These instructions install software straight onto your system, but if you prefer containers for development, these instructions should also work in [Toolbox](https://github.com/containers/toolbox).

1. Install the software that Jekyll depends on.
    ```bash
    sudo dnf install redhat-rpm-config zlib-devel ruby ruby-devel @development-tools
    ```
2. Install [Bundler](https://bundler.io/), which is a tool that manages Ruby-specific versions and dependencies.
    ```bash
    gem install bundler
    ```
3. Set up environment variables in your bashrc so Ruby gems install to a location you can manage. The example below comes from Jekyll's docs on [installing in Ubuntu](https://jekyllrb.com/docs/installation/ubuntu/). You can choose another location if you want.
    ```bash
    echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
    ```
4. Check the [GitHub Pages dependency versions](https://pages.github.com/versions/) and note the version numbers for `jekyll` and `github-pages`. We'll use them later.
5. Install the noted version of Jekyll. In the example below, replace the version number with the correct one.
    ```bash
    gem install jekyll -v 3.9.0
    #        replace this ^~~~~
    ```
## Set up the site
By now, you should have almost all the necessary software installed. The only things remaining are the gems that GitHub Pages requires. In this section, you'll set up your site and install those gems.

1. Create the GitHub repository for your site. Follow ["Creating a repository for your site"](https://docs.github.com/en/github/working-with-github-pages/creating-a-github-pages-site-with-jekyll#creating-a-repository-for-your-site).
2. Clone that repository to your local machine. Go into its directory.
3. Create a default Jekyll site. This will generate all the files for a basic Jekyll site, including config files.
    ```bash
    jekyll new .
    ```
4. Edit the Gemfile. Uncomment the command that's underneath the comment "If you want to use GitHub Pages". In it, add the `github-pages` version number you noted in "Get the software, step 4", in the previous section.
    ```bash
    gem "github-pages", "~> 207", group: :jekyll_plugins
    #          replace this ^~~
    ```
5. Delete the `gem "jekyll"` command under the comment "Happy Jekylling!", as mentioned in the previous step's comment.

## Test run locally
Follow ["Building your site locally"](https://docs.github.com/en/github/working-with-github-pages/testing-your-github-pages-site-locally-with-jekyll#building-your-site-locally) to see your new Jekyll site in action. From now on, remember this command:
```bash
bundle exec jekyll serve
```

## Update the site
Commit and push your changes, like you would with code. After several seconds, GitHub will build your site and publish it to your github.io address.
