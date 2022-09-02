.DEFAULT_GOAL := help
SHELL := bash

# Define preparation command for temp folders.
define prepare_env
	mkdir -p temp
	mkdir -p output
endef

# Define formatter command with `latexindent` (`.exe` or `.pl`).
define formatter
	scripts/latexindent.exe \
		--cruft=temp \
		--logfile=latexindent.log \
		--modifylinebreaks \
		--replacement \
		--overwrite \
		src/*.tex \
		src/*.cls \
		$(1)
endef

# Define compiler command with `pdflatex`.
define compiler
	pdflatex \
		main.tex \
		--enable-installer \
		--interaction=nonstopmode \
		--include-directory=src \
		--aux-directory=temp \
		--output-directory=output \
		--job-name=phd_report \
		--output-format=pdf \
		--synctex=1 \
		$(1)
endef


.PHONY: format
format:
	@ echo -e "# --------------- START --------------- "
	@ $(prepare_env)
	@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			echo -e "# Format source files with 'latexindent' (with '--silent' option)." ; \
			$(formatter) --silent ; \
		else \
			echo -e "# Format source files with 'latexindent' (with '--verbose' option)." ; \
			$(formatter) ; \
		fi;
	@ echo -e "# --------------- DONE --------------- \n"


.PHONY: pdf
pdf:
	@ echo -e "# --------------- START --------------- "
	@ $(prepare_env)
	@ if [ -z $(verbose) ] || ! [ $(verbose) = true ] ; \
		then \
			echo -e "# Compile the phd report with 'pdflatex' (with '--quiet' option)." ; \
			$(compiler) --quiet ; \
		else \
			echo -e "# Compile the phd report with 'pdflatex' (with '--verbose' option)." ; \
			$(compiler) ; \
		fi;
	@ echo -e "# --------------- DONE --------------- \n"


.PHONY: all
all: format pdf


.PHONY: clean
clean:
	@ echo -e "# --------------- START --------------- "
	@ echo -e "# Delete 'temp' and 'output' directories."
	@ if [ -d temp ]; \
		then \
			rm -r temp; \
		else \
			echo -e "warning: '/temp' doesn't exist or was already deleted."; \
		fi;
	@ if [ -d output ]; \
		then \
			rm -r output; \
		else \
			echo -e "warning: '/output' doesn't exist or was already deleted."; \
		fi;
	@ echo -e "# --------------- DONE --------------- \n"

.PHONY: help
help:
	@ echo -e "# Helpful duties available for phd report compilation."
	@ echo -e "    help:        display this help."
	@ echo -e "    clean:       delete 'temp' and 'output' directories."
	@ echo -e "    format:      format source files with 'latexindent' (use 'verbose=true' to see details)."
	@ echo -e "    pdf:         generate the phd report with 'pdflatex' (use 'verbose=true' to see details)."
	@ echo -e "    all:         perform the following tasks: 'make format pdf'."
