pandoc --toc-depth 1 --toc main.tex --mathjax -f latex -H start.tmp -t html -s -o index.html --bibliography references.bib
pandoc --toc-depth 1 --toc transformer.tex --mathjax -f latex -H start.tmp -t html -s -o transformer.html
pandoc --toc-depth 1 --toc convnet.tex --mathjax -f latex -H start.tmp -t html -s -o convnet.html 
