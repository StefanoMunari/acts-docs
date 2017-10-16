default: report.pdf

history.tex: history.xml
	xsltproc common/xml/xsl/history.xsl history.xml > history.tex

report.pdf: report.tex
	pdflatex report
	bibtex report
	pdflatex report
	pdflatex report

clean:
	rm -vf *.aux *.log *.lof *.lot *.toc *.pdf *.mp *.mps *.dvi *.out *.bbl *.blg
