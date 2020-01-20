FILE=presentation
MAIN_FILE=main.tex
SLIDES=$(wildcard slides/*tex)
THEME_FILES=$(wildcard DesyTheme/*sty)

$(FILE).pdf: $(MAIN_FILE) $(THEME_FILES) $(SLIDES)
	pdflatex --jobname $(FILE) $(MAIN_FILE)
	pdflatex --jobname $(FILE) $(MAIN_FILE)
	command rm -f *.aux *.log *.nav *.out *.snm *.toc
