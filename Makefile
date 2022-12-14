%.html: %.tex namedtensor.sty template.html
	pandoc --toc-depth 1 --toc --number-section $< --mathjax -f latex --template template.html -t html -s -o $@ --bibliography references.bib

%.pdf: %.tex namedtensor.sty
	pdflatex $<
	bibtex $(basename $< .tex) || true
	pdflatex $<
	pdflatex $<

all: pdf html

pdf: main.pdf
	cp main.pdf namedtensor.pdf

html: main.html
	cp main.html index.html

main.pdf main.html: main.tex intro.tex tensors.tex operations.tex examples.tex calculus.tex alternatives.tex conclusion.tex examples_long.tex calculus_formal.tex macros.tex

