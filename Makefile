.PHONY: all

all: coverletter.pdf cv.pdf

TEX = xelatex
CV_SRCS = $(shell find cv/ -name '*.tex')

cv.pdf: cv.tex profile.jpg $(CV_SRCS)
	$(TEX) $<

coverletter.pdf: coverletter.tex profile.jpg
	$(TEX) $<

