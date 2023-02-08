# [default] Start the DEFAULT toolbox and serve the site within it (likely fedora-toolbox-N)
start:
    toolbox run just serve

# Serve the site
serve:
    bundle exec jekyll serve
