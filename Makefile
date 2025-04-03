# K suboru: proj1.tex
# Datum:    3.3.2025 
# Autor:    Jakub Králik (xkralij00@stud.fit.vutbr.cz)
# Projekt:  ITY proj 1

PROJ=proj1


$(PROJ).pdf: $(PROJ).tex
	latex $(PROJ).tex
	latex $(PROJ).tex
	dvips -t a4 $(PROJ).dvi
	ps2pdf $(PROJ).ps

clean:
	rm -f $(PROJ).aux $(PROJ).dvi $(PROJ).log $(PROJ).ps $(PROJ).out	
	rm -f $(PROJ).fdb_latexmk $(PROJ).fls $(PROJ).*.gz

clean-all: clean
	rm -f $(PROJ).pdf
