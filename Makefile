ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

DOCKER_LATEX := blue271828/texlive
WRK_DIR      := /latex

.PHONY: pdf
pdf: *.tex
	@ for src in $^; do \
		docker run --rm -v $(ROOT_DIR):$(WRK_DIR) -w $(WRK_DIR) $(DOCKER_LATEX) pdflatex $$src; \
	done
