.SUFFIXES: .tex .dvi .pdf

all: resume.pdf

clean:
	rm -rf *.aux *.dvi *.log

.tex.dvi:
	uplatex -kanji=utf-8 -synctex=1 $<

.dvi.pdf:
	dvipdfmx $<

resume.pdf: resume.tex resume.dvi
