Irene's Webpage
===================

This site uses [Jekyll][] and [bibble][] to generate a static personal webpage
complete with publications, research and news.

Note that all of the tools used to build this page are horribly out of
date, but I'm never re-writing this webpage, so deal with it.

Editing
-------

Most pages are just Markdown files that you can edit directly. 


News Items and Blog Posts
-------------------------

For both long-form blog posts and short news updates, we use Jekyll's blogging system. To post a new item of either type, you create a file in the [_posts directory][postsdir] using the naming convention `YYYY-MM-DD-title-for-url.md`. The date part of the filename always matters; the title part is currently only used for full blog posts (but is still required for news updates).

The file must begin with [YAML front matter][yfm]. For news updates, use this:

    ---
    layout: post
    shortnews: true
    ---

For full blog posts, use this format:

    ---
    layout: post
    title:  "Some Great Title Here"
    ---

And concoct a page title for your post. The body of the post goes after the `---` in either case.

[yfm]: http://jekyllrb.com/docs/frontmatter/


Building and Deploying
----------------------

Note that Jekyll no longer supports Red Carpet markdown. To compile
this webpage, install an older version of Jekyll.

The requirements for building the site are:

* [ruby][]: use a package manager, e.g., with Macports `sudo port
  install ruby`
* [rbenv][]: use a package manager, e.g., with Macports `sudo port
  install rbenv`
* [Bundler][]: run `gem install bundler`
* [Jekyll][]: run `gem install --version 3.8 jekyll`
* [Python][]: we're still using python 2.7, so install that. Macports `sudo port install python27`, then activate with `sudo port selec --set python2 python27` 
* [Pip][]: use package manager, e.g., with Macports `sudo port install py27-pip`, then activate with `sudo port select --set pip pip27`
* [Pybtex][]: run `pip install pybtex`
* Jinja: run `pip install Jinja2`
* [bibble][]: included as a submodule. Because git is cruel, you need to use
  `git clone --recursive URL` or issue the commands `git submodule init ; git
  submodule update` to check out the dependency.
* ssh and rsync, only if you want to deploy directly.

`make` compiles the bibliography and the website content to the `_site`
directory. To preview the site, run `jekyll serve`` and head to
http://0.0.0.0:4000.

To upload a new version of the site via rsync over ssh, type `make deploy`.

If you use an alternative Python when building the bibliography, use `make
PYTHON=/path/to/python`.

[Jekyll]: http://jekyllrb.com/
[bibble]: https://github.com/sampsyo/bibble/
[pybtex]: http://pybtex.sourceforge.net
