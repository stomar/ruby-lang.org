**Work in progress**.

**Work in progress**.

**Work in progress**.

## Synopsis

This repository contains the new http://www.ruby-lang.org. **The preview is at http://ruby.github.com/ruby-lang.org**. Please note neither the content or the design are definitive at this early stage of the project!

This is the official port approved by Matz and maintained by the current contributors to ruby-lang.org (that is, the Visual Identity Team (VIT) as some used to call us).

## General infos

### Why this project?

ruby-lang.org's content is outdated and the different translations are either out of sync or dead. It is time for a change!

This application is based around a Jekyll instance, but makes use of several other libraries and hand-made tools, in order to ease maintenance and deploy.
Goals:

* maintenance of ruby-lang.org through Github through this very repository
* **page editions using pull requests or live edits!**
* **translations sync thanks to git logs**

Hopefully, a brand new content will be written, and a new design could be proposed.

### What's been done so far?

* Thor tasks for content generation and deployment.
* A crawler to fetch the legacy content as haml templates (postmodern's version).
* The Jekyll application (templates, basic structure, helpers).
* A little design refresh based on Octopress excellent theme.
* A few pages (check under `en` and `fr` subdirectories), but more is coming really soon.
* Several discussions about what should be done in the Issues section (go check it out!).

### What's missing so far?

* Most of the content. It's been ported to markdown already, we have to incorporate it.
* The actual content overhaul (re-thinking everything! See the Issues section).
* Deploy tasks for production (waiting for some answers about the architecture).
* Production-ready checks (links, urls, content missing…) and actual deployment ("when it's ready").

## How can I contribute?

This is a git-based workflow. To edit pages, you may:

* fork this project and request your changes to be merged (pull request)
* use the nice github live-edit-and-pull-request feature, so one is not forced to clone the repository.

If you happen to contribute on a regular basis, you'd join the rubylang Github Organization, allowing for committing, live edits and preview deploy.

## Hacking on your local machine

You may clone the repository and run the application on your local machine. See the "Install" section below. Using thor tasks, you can administrate the website. Check them all with `thor list` and `thor help [command]`.

### Creating pages and news items

There are command line tasks for creating new pages and news items. Using those tasks prevents you from messing with the metadata, and ensure a few checks.

    thor new:page 'en/my/page' 'optional title'
    thor new:post 'Breaking news !'

Type in `thor list` to see all available tasks. We may turn this into a `rubylang` script.

### "Install" locally

    git clone git://github.com/ruby/ruby-lang.org.git
    cd ruby-lang.org

Required dependencies:

    gem install thor rack jekyll rdiscount RedCloth haml compass fancy-buttons rubypants pygments.rb yard

Or if you use Bundler:

    bundle install

There is a `.rvmrc` that will come handy if you are using RVM.

Once every gem is installed launch the webserver:

    thor admin:preview

Then open `http://localhost:4000/` in your browser.
