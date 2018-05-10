all: presentation.tex
	pdflatex -shell-escape presentation
	pdflatex -shell-escape presentation
	pdftk presentation.pdf output presentation-fixed.pdf
	pdfnup presentation.pdf --nup 2x2
	rm presentation.pdf
	mv presentation-fixed.pdf presentation.pdf
