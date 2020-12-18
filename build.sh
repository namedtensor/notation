pandoc --toc-depth 1 --toc --number-section main.tex --mathjax -f latex -H start.tmp -t html -s -o index.html --bibliography references.bib
