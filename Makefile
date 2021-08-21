ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

DKR_IMG := blue271828/sharelatex-full
WRK_DIR := /latex

.PHONY: pdf
pdf: *.tex
	@ for src in $^; do \
		docker run --rm -v $(ROOT_DIR):$(WRK_DIR) -w $(WRK_DIR) $(DKR_IMG) pdflatex $$src; \
	done
