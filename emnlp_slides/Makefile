filename=dlextsum_emnlp18_slides

all: make-images pdf-clean

make-images:
	cd images && make all

pdf-clean: pdf
	rm -f ${filename}.log
	rm -f ${filename}.aux
	rm -f ${filename}.nav
	rm -f ${filename}.toc
	rm -f ${filename}.snm
	rm -f ${filename}.out

pdf: 
	pdflatex ${filename}.tex
	pdflatex ${filename}.tex

read:
	evince ${filename}.pdf &

aread:
	acroread ${filename}.pdf

clean:
	rm -f ${filename}.log
	rm -f ${filename}.aux
	rm -f ${filename}.out
	rm -f ${filename}.dvi
	rm -f ${filename}.bbl
	rm -f ${filename}.blg
	rm -f ${filename}.toc
	rm -f ${filename}.ps
	rm -f ${filename}.pdf
	rm -f ${filename}.nav
	rm -f ${filename}.snm
