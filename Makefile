PYTHON=python3.12
BIBTEX=bibtex
JEKYLL=jekyll

# targets that aren't filenames
.PHONY: all clean deploy

all: cv _site/index.html

BUILDARGS :=

_site/index.html: 
	$(JEKYLL) build

cv: cv/cv.tex
	$(MAKE) -C cv

clean:
	$(RM) -r _site
	$(MAKE) -C cv clean

HOST := irene@geoduck.ambulatoryclam.net

deploy: clean all
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(HOST):schemeprincess
