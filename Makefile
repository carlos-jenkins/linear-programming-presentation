PUBLISH=./publish
PKGS=TEXINPUTS=./style//:$(TEXINPUTS)
DOC=linear_programming

LATEX=/usr/bin/pdflatex
LATEXOPT=-halt-on-error -interaction errorstopmode -output-directory $(PUBLISH) $(DOC).tex

all: clean compile open

clean:
	rm -rf $(PUBLISH)/*

compile:
	$(PKGS) $(LATEX) $(LATEXOPT)

open:
	xdg-open $(PUBLISH)/$(DOC).pdf
