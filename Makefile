%.html: %.tex
	pandoc --toc-depth 1 --toc $< --mathjax -f latex -H start.tmp -t html -s -o $@ --bibliography references.bib

%.pdf: %.tex
	pdflatex $<
	bibtex $(basename $< .tex) || true
	pdflatex $<
	pdflatex $<

all: pdf html

pdf: main.pdf main_boaz.pdf short.pdf transformer.pdf convnet.pdf

html: main.html main_boaz.html short.html transformer.html convnet.html
	cp main_boaz.html index.html

