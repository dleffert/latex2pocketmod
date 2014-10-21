.PHONY: all
all: booklet.pdf

booklet.pdf: booklet.tex rotate.pdf
	pdflatex booklet.tex

rotate.pdf: rotate.tex content.pdf
	pdflatex rotate.tex

content.pdf: content.tex
	pdflatex content.tex

.PHONY: clean
clean:
	rm content.pdf content.aux rotate.pdf rotate.aux booklet.pdf booklet.aux *.log

.PHONY: serve
serve:
	@echo =================================================
	@echo = Use Control+C to break out of the web server. =
	@echo =================================================
	python -mSimpleHTTPServer 8000


