%.html: %.tex
	pandoc --toc-depth 1 --toc $< --mathjax -f latex -H start.tmp -t html -s -o $@ --bibliography references.bib

%.pdf: %.tex
	pdflatex $<
	bibtex $(basename $< .tex) || true
	pdflatex $<
	pdflatex $<

all: pdf html

pdf: main.pdf transformer.pdf convnet.pdf

html: main.html transformer.html convnet.html
	cp main.html index.html

