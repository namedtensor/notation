pandoc --toc-depth 1 --toc --number-section main.tex --mathjax -f latex --template template.html -t html -s -o index.html --bibliography references.bib
