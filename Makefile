PYTHON=python2.7
LATEX=pdflatex

# targets that aren't filenames
.PHONY: all clean deploy

all: _includes/pubs.html _site/index.html cv/cv.pdf

BUILDARGS :=

_includes/pubs.html: bib/pubs.bib bib/publications.tmpl
	mkdir -p _includes
	$(PYTHON) bibble/bibble.py $+ > $@

_site/index.html: $(wildcard *.html) _includes/pubs.html _config.yml \
	_layouts/default.html
	jekyll build $(BUILDARGS)

cv/cv.pdf: cv/cv.tex
	$(LATEX) cv/cv.tex
	$(RM) cv/cv.aux
	$(RM) cv/cv.log

clean:
	$(RM) -r _site _includes/pubs.html cv/cv.pdf

CSEHOST := iyzhang@tricycle.cs.washington.edu
HOST := irene@geoduck.ambulatoryclam.net

deploy: clean all
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(HOST):schemeprincess
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(CSEHOST):public_html
