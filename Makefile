FILE = qsl_back

#look up two directories for .pdf targets
#VPATH = ../../

#all figures used must be in the directory "figures", else they will not be dependencies
#FIGS := figures/bohrmodel.pdf  figures/conduction_band.pdf

$(FILE).pdf : $(FILE).tex $(FIGS)
	pdflatex $^ -file-line-error  #make the pdf, .tex and all figs are prerequsites
#        chmod 755 $@
#        mv $@ ../../
#       make clean

.PHONY  : clean     #clean up the cruff
clean   :
	rm -f *.aux *.log *.out *.ps *.toc *.nav *.snm *.dvi *.vrb *.plt *.data *-converted-to.pdf

