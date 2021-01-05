%.html: %.tex namedtensor.sty start.tmp
	pandoc --toc-depth 1 --toc --number-section $< --mathjax -f latex -H start.tmp -t html -s -o $@ --bibliography references.bib

%.pdf: %.tex namedtensor.sty
	pdflatex $<
	bibtex $(basename $< .tex) || true
	pdflatex $<
	pdflatex $<

all: pdf html

pdf: main.pdf

html: main.html
	cp main.html index.html

main.pdf main.html: main.tex types.tex dual.tex fancy.tex calculus.tex alternatives.tex

