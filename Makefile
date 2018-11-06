FILE=presentation
MAIN_FILE=main.tex
THEME_FILES=$(wildcard desy_theme/*sty)

$(FILE).pdf: $(MAIN_FILE) $(THEME_FILES)
	pdflatex --jobname $(FILE) $(MAIN_FILE)
	command rm -f *.aux *.log *.nav *.out *.snm *.toc
