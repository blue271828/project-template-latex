ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

DKR_IMG := sharelatex/sharelatex-base
WRK_DIR := /latex

.PHONY: build
build: *.tex
	@ for src in $^; do \
		docker run --rm -v $(ROOT_DIR):$(WRK_DIR) -w $(WRK_DIR) $(DKR_IMG) pdflatex $$src; \
	done
