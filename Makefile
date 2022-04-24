ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

DKR_IMG := blue271828/sharelatex-full@sha256:d2e6c678b31fbbde8343f35d7b193edaa407063216dca9fc7c01bc127b195caf
WRK_DIR := /latex

.PHONY: pdf
pdf: *.tex
	@ for src in $^; do \
		docker run --rm -v $(ROOT_DIR):$(WRK_DIR) -w $(WRK_DIR) $(DKR_IMG) pdflatex $$src; \
	done
