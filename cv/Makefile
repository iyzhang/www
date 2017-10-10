
all: pdf

pdf:
	./latexmk.pl -pdf cv.tex
	rm *.aux
	rm *.log
	rm *.out
clean: 
	./latexmk.pl -c
