NAME=dlextsum.emnlp18
all: ${NAME}.pdf ${NAME}_submission.pdf ${NAME}_appendix.pdf

${NAME}.pdf: ${NAME}.tex
	pdflatex ${NAME}.tex
	bibtex ${NAME}
	pdflatex ${NAME}.tex
	pdflatex ${NAME}.tex

${NAME}_submission.pdf: LASTPAGE = $(shell pdftotext -layout ${NAME}.pdf - | grep -B10 'Supplementary Material For' | grep -x '\s*[0-9][0-9]*\s*' | tail -n1 | sed 's/^ *//')
${NAME}_submission.pdf: ${NAME}.pdf
	@echo I think the main paper is pages 1-${LASTPAGE}
	pdftk ${NAME}.pdf cat 1-${LASTPAGE} output ${NAME}_submission.pdf

${NAME}_appendix.pdf: LASTPAGE = $(shell   pdftotext -layout ${NAME}.pdf - | grep -B10 'Supplementary Material For' | grep -x '\s*[0-9][0-9]*\s*' | tail -n1 | sed 's/^ *//')
${NAME}_appendix.pdf: FIRST = $(shell echo $$((${LASTPAGE}+1)))
${NAME}_appendix.pdf: LASTLAST = $(shell pdfinfo ${NAME}.pdf  | grep ^Pages: | cut -d' ' -f2- | sed 's/^ *//')
${NAME}_appendix.pdf: ${NAME}.pdf
	@echo I think the appendix is pages ${FIRST}-${LASTLAST}
	pdftk ${NAME}.pdf cat ${FIRST}-${LASTLAST} output ${NAME}_appendix.pdf

clean:
	rm -f ${NAME}.pdf ${NAME}.aux ${NAME}.bbl ${NAME}_submission.pdf ${NAME}_appendix.pdf
