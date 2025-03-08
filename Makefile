PYTHON=python3.12
BIBTEX=bibtex
JEKYLL=jekyll

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
	cp uw-women-statement.txt _site/

cv: cv/cv.tex
	$(MAKE) -C cv

clean:
	$(RM) -r _site _includes/pubs.html
	$(MAKE) -C cv clean

HOST := irene@geoduck.ambulatoryclam.net

deploy: clean all
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(HOST):schemeprincess
