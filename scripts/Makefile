.DEFAULT_GOAL := help
SHELL := bash

# Define formatter command with `latexindent` (`.exe` or `.pl`).
define formatter
	scripts/latexindent.exe \
		--cruft=src \
		--logfile=logfile_format.log \
		--modifylinebreaks \
		--replacement \
		--overwrite \
		src/*.tex \
		src/*.cls \
		$(1)
endef

.PHONY: format
format:
	-@ echo -e "# Format source files (with 'latexindent')."
	-@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			$(formatter) --silent ; \
		else \
			$(formatter) ; \
		fi;


# Define 'tex' compiler command with `pdflatex`.
define tex_compiler
	pdflatex \
		main.tex \
		--enable-installer \
		--interaction=nonstopmode \
		--include-directory=src \
		--aux-directory=src \
		--output-directory=src \
		--output-format=pdf \
		--synctex=1 \
		$(1)
endef

.PHONY: compil-tex
compil-tex:
	-@ echo -e "# Compile the main 'tex' file for the first time (wih 'pdflatex')."
	-@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			$(tex_compiler) --quiet ; \
		else \
			$(tex_compiler) ; \
		fi;

.PHONY: compil-tex2
compil-tex2:
	-@ $(prepare_env)
	-@ echo -e "# Compile again the main 'tex' file to avoid errors of first time (wih 'pdflatex')."
	-@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			$(tex_compiler) --quiet ; \
		else \
			$(tex_compiler) ; \
		fi;

.PHONY: compil-tex3
compil-tex3:
	-@ echo -e "# Compile again the main 'tex' file to regenerate auxiliary files (wih 'pdflatex')."
	-@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			$(tex_compiler) --quiet ; \
		else \
			$(tex_compiler) ; \
		fi;

.PHONY: compil-tex4
compil-tex4:
	-@ echo -e "# Compile the main 'tex' file to include bibliography, glossary and index (wih 'pdflatex')."
	-@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			$(tex_compiler) --quiet ; \
		else \
			$(tex_compiler) ; \
		fi;


# Define 'bib' compiler command with `bibtex`.
define bib_compiler
	bibtex \
		--include-directory=src \
		main \
		$(1)
endef

.PHONY: compil-bib
compil-bib:
	-@ echo -e "# Compile the bibliography from 'bib' file (with 'bibtex')."
	-@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			$(bib_compiler) -quiet ; \
		else \
			$(glo_compiler) ; \
		fi;


# Define 'glo' compiler command with `makeglossaries`.
define glo_compiler
	makeglossaries \
		-d src \
		main \
		$(1)
endef

.PHONY: compil-glo
compil-glo:
	-@ echo -e "# Compile the glossary from 'glo' file (with 'makeindex')."
	-@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			$(glo_compiler) -q ; \
		else \
			$(glo_compiler) ; \
		fi;


# Define 'idx' compiler command with `makeindex`.
define idx_compiler
	makeindex \
		-s src/main.ist \
		-o src/main.ind \
		main \
		$(1)
endef

.PHONY: compil-idx
compil-idx:
	-@ $(prepare_env)
	-@ echo -e "# Compile the index from 'idx' file (with 'makeindex')."
	-@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			$(idx_compiler) -q ; \
		else \
			$(idx_compiler) ; \
		fi;


.PHONY: pdf
pdf: compil-tex compil-tex2 compil-bib compil-glo compil-idx compil-tex3 compil-tex4


.PHONY: read
read:
	-@ echo -e "# Read the pdf of phd report with the default pdf reader." ;
	-@ START "" "src/main.pdf"


.PHONY: all
all: format compil-tex compil-tex2 compil-bib compil-glo compil-idx compil-tex3 compil-tex4 read

.PHONY: help
help:
	-@ echo -e "# Helpful duties available for phd report compilation."
	-@ echo -e "    help:        display this help."
	-@ echo -e "    format:      format source files with 'latexindent' (use '--verbose=true' to see details)."
	-@ echo -e "    compil-tex:  compile the main 'tex' file (wih 'pdflatex')."
	-@ echo -e "    compil-bib:  compile the bibliography from 'bib' file (with 'bibtex')."
	-@ echo -e "    compil-glo:  compile the glossary from 'glo' file (with 'makeindex')."
	-@ echo -e "    compil-idx:  compile the index from 'idx' file (with 'makeindex')."
	-@ echo -e "    pdf:         perform the following tasks: 'make compil-tex compil-bib compil-glo compil-idx compil-tex2 compil-tex3'."
	-@ echo -e "    read:        Read the pdf of phd report with the default pdf reader."
	-@ echo -e "    all:         perform the following tasks: 'make format pdf'."
