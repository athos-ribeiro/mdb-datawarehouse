MAIN=datawarehouse.tex
AUX=datawarehouse.aux

all:
	pdflatex $(MAIN)
	bibtex $(AUX)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

.PHONY: clean

clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf
