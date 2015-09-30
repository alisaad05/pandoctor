#==================================
#======================= USER PATHS 			
#==================================
FILENAME=main
BIB=./bib/talk.bib
CSTYLE=./csl/talk.csl
TEMPLATE=./template/default.beamer.tex
default: md2html md2htmlmin md2beamer md2beamermin md2tex tex2pdf clean

#=============================================
#=============================================
#======================= CONVERT FROM MARKDOWN 			
#=============================================

md2tex: 
	pandoc -s $(FILENAME).md -t latex -o $(FILENAME)_md.tex
	
### beamer full
# themes: Boadilla  CambridgeUS
# colortheme: beaver  seagull
md2beamer:
	pandoc -t beamer $(FILENAME).md  -o $(FILENAME)_beamer.pdf \
	--bibliography=$(BIB) \
	--template=$(TEMPLATE) \
	--csl=$(CSTYLE) \
	--variable fontsize=10pt \
	--variable theme=CambridgeUS \
	--variable colortheme=beaver \
	--slide-level=2

### html full
md2html:
	pandoc -f markdown $(FILENAME).md -o $(FILENAME)_html.html \
	--standalone \
	--toc --toc-depth=1 \
	--bibliography=$(BIB) \
	--csl=$(CSTYLE) \
	--self-contained \ # downloads and incorporates external URLs into HTML ouput
	--mathjax #--mathjax='http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' \
		
### beamer minimalist
md2beamermin: 
	pandoc -t beamer $(FILENAME).md -o $(FILENAME)_beamermin.pdf
	
### html minimalist
md2htmlmin: 
	pandoc -s $(FILENAME).md -o $(FILENAME)_htmlmin.html --mathjax
	
#============================================
#======================= CONVERT TO MARKDOWN 			
#============================================

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

