%.html: %.tex namedtensor.sty template.html
	pandoc --toc-depth 1 --toc --number-section $< --mathjax -f latex --template template.html -t html -s -o $@ --bibliography references.bib

%.pdf: %.tex namedtensor.sty
	pdflatex $<
	bibtex $(basename $< .tex) || true
	pdflatex $<
	pdflatex $<

all: pdf html

pdf: paper.pdf
	cp paper.pdf namedtensor.pdf

html: web.html
	cp web.html index.html

paper.pdf: paper.tex

web.html: web.tex

paper.pdf web.html: defs.tex intro.tex tensors.tex operations.tex examples.tex calculus.tex alternatives.tex conclusion.tex ack.tex examples_long.tex calculus_formal.tex macros.tex

