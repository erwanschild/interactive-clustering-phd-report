.DEFAULT_GOAL := help
SHELL := bash

define compiler
	pdflatex \
		main.tex \
		--enable-installer \
		--interaction=nonstopmode -\
		-include-directory=src \
		--aux-directory=temp \
		--output-directory=output \
		--job-name=phd_report \
		--output-format=pdf \
		--synctex=1 \
		$(1)
endef

.PHONY: format
format:
	@ echo "# Format source files with 'latexindent'."
	@ scripts/latexindent.exe --cruft=temp --logfile=latexindent.log --overwrite src/*.tex

.PHONY: pdf
pdf:
	@ echo "# Compile the phd report in '--quiet' mode."
	@ $(compiler) --quiet
	@ echo "DONE"

.PHONY: pdf-verbose
pdf-verbose:
	@ echo "# Compile the phd report in '--verbose' mode."
	@ $(compiler) --verbose
	@ echo "DONE"

.PHONY: clean
clean:
	@ echo "# Delete 'temp' and 'output' directories."
	@ rm -r temp output
	@ echo "DONE"

.PHONY: help
help:
	@ echo "# Helpful duties available for phd report compilation."
	@ echo "    help:         display this help."
	@ echo "    format:       format source files with 'latexindent'."
	@ echo "    pdf:          compile the phd report in '--quiet' mode."
	@ echo "    pdf-verbose:  compile the phd report in '--verbose' mode."
	@ echo "    clean:        delete 'temp' and 'output' directories."
