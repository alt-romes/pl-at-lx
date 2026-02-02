INCLUDES = ../beamer-theme/includes

all: 2026-02.pdf

%.pdf : %.tex force
	TEXINPUTS=$(INCLUDES):.: pdflatex $<

# %.tex : %.lhs force
# 	LHS2TEXINPUTS=$(INCLUDES) lhs2TeX -P$(INCLUDES): --poly -o $@ $<
#
# %.hs : %.lhs force
# 	lhs2TeX -P$(INCLUDES): --newcode -o $@ $<
#
# %.ghci : %.lhs force
# 	ghci -pgmL lhs2TeX -optL-P$(INCLUDES): -optL--pre $<
#
# %.ghcid : %.lhs force
# 	ghcid -c "ghci -pgmL lhs2TeX -optL-P$(INCLUDES): -optL--pre" $<

clean :
	rm -f *.aux *.log *.nav *.out *.ptb *.snm *.toc *.xdv *.fls *.fdb_latexmk

force :

.PHONY : force clean
