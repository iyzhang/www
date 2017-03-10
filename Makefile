PYTHON=python2.7
LATEX=job-search/latexmk.pl -bibtex -pdf
BIBTEX=bibtex

# targets that aren't filenames
.PHONY: all clean deploy

all: jobsearch _includes/pubs.html _site/index.html

BUILDARGS :=

_includes/pubs.html: bib/pubs.bib bib/publications.tmpl
	mkdir -p _includes
	$(PYTHON) bibble/bibble.py $+ > $@

_site/index.html: $(wildcard *.html) _includes/pubs.html _config.yml \
	_layouts/default.html
	jekyll build $(BUILDARGS)

jobsearch: job-search/cv.tex job-search/research.tex job-search/teaching.tex
	$(MAKE) -C job-search
	mv job-search/cv.pdf .
	mv job-search/teaching.pdf .
	mv job-search/research.pdf .
	cp job-search/talk.pdf .

clean:
	$(RM) -r _site _includes/pubs.html
	$(MAKE) -C job-search clean

CSEHOST := iyzhang@tricycle.cs.washington.edu
HOST := irene@geoduck.ambulatoryclam.net

deploy: clean all
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(HOST):schemeprincess
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(CSEHOST):public_html
