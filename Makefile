PYTHON=python2.7
BIBTEX=bibtex
JEKYLL=/usr/local/bin/jekyll

# targets that aren't filenames
.PHONY: all clean deploy

all: cv _includes/pubs.html _site/index.html

BUILDARGS :=

_includes/pubs.html: bib/pubs.bib bib/publications.tmpl
	mkdir -p _includes
	$(PYTHON) bibble/bibble.py $+ > $@

_site/index.html: $(wildcard *.html) _includes/pubs.html _config.yml \
	_layouts/default.html
	$(JEKYLL) build

cv: cv/cv.tex
	$(MAKE) -C cv

clean:
	$(RM) -r _site _includes/pubs.html
	$(MAKE) -C cv clean

CSEHOST := iyzhang@tricycle.cs.washington.edu
HOST := irene@geoduck.ambulatoryclam.net

deploy: clean all
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(HOST):schemeprincess
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(CSEHOST):public_html
