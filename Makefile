default: report.pdf

history.tex: history.xml
	xsltproc common/xml/xsl/history.xsl history.xml > history.tex

report: report.tex
	pdflatex report.tex
	pdflatex report.tex
	pdflatex report.tex
	pdflatex report.tex

user-manual: user-manual.tex
	pdflatex user-manual.tex
	pdflatex user-manual.tex
	pdflatex user-manual.tex
	pdflatex user-manual.tex

clean:
	rm -vf *.aux *.log *.lof *.lot *.toc *.pdf *.mp *.mps *.dvi *.out *.bbl *.blg
