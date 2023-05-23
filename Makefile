all: compile

compile: cv.tex
	@xelatex --shell-escape cv.tex
	@-bibtex cv
	@xelatex --shell-escape cv.tex
	@xelatex --shell-escape cv.tex

open: cv.pdf
	@open cv.pdf

