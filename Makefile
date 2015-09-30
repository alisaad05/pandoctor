# SAAD 2015 - licensed under WTFNMFPL 
#=================================
#======================= USER DATA 			
#=================================
FILENAME=main
BIB=./bib/talk.bib
CSTYLE=./csl/talk.csl
CSS=./css/pandoc_github.css
CSS_REMOTE=https://gist.githubusercontent.com/andyferra/2554919/raw/10ce87fe71b23216e3075d5648b8b9e56f7758e1/github.css
TEMPLATE=./template/default.beamer.tex
VERSION=1.0

# default makes all
default: md2html md2htmlmin md2beamer md2beamermin md2tex tex2pdf clean

# default to produce HTML
html: md2html_selfcontain md2html_mathrendered

# default to produce PDF
pdf: md2beamer

#============================
#======================= HELP	
#============================

# About pandoc options
# --------------------

# md2html: --standalone: writes header and footer to output file
# md2html: --self-contained: downloads and incorporates external URLs into HTML ouput
# md2html: --mathjax='http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML'
# md2beamer: --variable theme= Boadilla  OR CambridgeUS OR ...
# md2beamer: --variable colortheme= beaver  OR  seagull OR ...

# option clash when rendering with mathjax and forcing a self-contain version
# therefore for self-contain I use 'md2html_selfcontain' which renders with mathjax (looks bad)

# About pandoc filters
# --------------------
# to install pandoc filters from IPython console: pip install pandocfilters
# Dont forget to add Inkscape to PATH before using pandoc-svg filter
# Tip: conversion can be time-consuming but efficient for simultaneous html/beamer generation based on SVGs
# I think it would be useful to allow SVG in HTML and still convert it to medium-resolution PNG instead of PDF in Beamer

#=============================================
#======================= CONVERT FROM MARKDOWN 			
#=============================================

md2tex: 
	pandoc -s $(FILENAME).md -t latex -o $(FILENAME)_md.tex
	
### beamer full

md2beamer:
	pandoc -t beamer $(FILENAME).md  -o $(FILENAME)_beamer.pdf \
	--bibliography=$(BIB) \
	--template=$(TEMPLATE) \
	--csl=$(CSTYLE) \
	--variable fontsize=10pt \
	--variable theme=CambridgeUS \
	--variable colortheme=beaver \
	--toc \
	--slide-level=2 \
	--variable version=$(VERSION) \
	--filter ./pandoc-svg.py  

### html full
md2html_mathrendered:
	pandoc -f markdown $(FILENAME).md -o $(FILENAME)_html.html \
	--standalone \
	--toc --toc-depth=2 \
	--bibliography=$(BIB) \
	--csl=$(CSTYLE) \
	--css=$(CSS) \
	--variable version=$(VERSION) \
	--mathjax
	# --self-contained

md2html_selfcontain:
	pandoc -f markdown $(FILENAME).md -o $(FILENAME)_offlinehtml.html \
	--standalone \
	--toc --toc-depth=2 \
	--bibliography=$(BIB) \
	--csl=$(CSTYLE) \
	--css=$(CSS) \
	--variable version=$(VERSION) \
	--self-contained
	# --mathjax
		
### beamer minimalist
md2beamermin: 
	pandoc -t beamer $(FILENAME).md -o $(FILENAME)_beamermin.pdf
	
### html minimalist
md2htmlmin: 
	pandoc -s $(FILENAME).md -o $(FILENAME)_htmlmin.html --mathjax
	
#============================================
#======================= CONVERT TO MARKDOWN 			
#============================================

html2md:
	pandoc $(FILENAME).html -t markdown -o $(FILENAME).md
tex2md:
	pandoc -f latex $(FILENAME).tex -t markdown -o $(FILENAME).md
docx2md: 
	pandoc -s $(FILENAME).docx -t markdown -o $(FILENAME).md
docx2tex: 
	pandoc -s $(FILENAME).docx -t latex -o $(FILENAME)_docx.tex
		
#============================
#======================= MISC 			
#============================

help:
	@echo
	@echo md2tex 		: produces LateX source
	@echo md2beamer 	: produces Beamer PDF
	@echo md2beamermin 	: produces minimalist Beamer PDF, without bibliography nor citations style
	@echo md2html 		: produces HTML page 
	@echo md2htmlmin 	: produces minimalist HTML page without bibliography nor citations style
	@echo


tex2pdf:
	@echo ---------
	@echo COMPILING
	@echo ---------
	
	pdflatex -interaction=nonstopmode $(FILENAME)_md.tex
	bibtex $(FILENAME)_md
	pdflatex -interaction=nonstopmode $(FILENAME)_md.tex
	pdflatex -interaction=nonstopmode $(FILENAME)_md.tex
	pdflatex -synctex=1 -interaction=nonstopmode $(FILENAME)_md.tex

clean:
	@echo --------
	@echo CLEANING
	@echo --------
	
	rm -f *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.brf 
	rm -f *.maf *.out *.mtc* *.tdo *.dpth *.md5 *.auxlock
	rm -f *.xml
	# rm -f *.bib

# math:
# 	pandoc -s --mimetex=$(MATHTEX) math.md >t.html

# zip:
# 	rm -f $(FILENAME).zip
# 	cp $(FILENAME).md $(FILENAME)-utf8.md
# 	zip -r $(FILENAME) $(FILENAME)-utf8.md $(FILENAME).html images

