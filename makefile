## Zotero -
## - Install Zotero Better Bib(La)Tex plugin
## - Set CiteKey format as: [auth:lower][year]
##
## Export from Zotero as “Better BibLaTex” (check only “keep updated”)
##
## Atom -
## - autocomplete-bibtex package and follow instructions.
##
## Download CSL files from:
## https://github.com/citation-style-language/styles
##

all: manuscript.docx manuscript.pdf

manuscript.docx:
	pandoc --latex-engine=xelatex --variable mainfont='Times New Roman' --variable fontsize=12pt --smart --standalone -H pandoc_files/format.sty  --bibliography ~/Documents/bibliography/library.bib --csl=pandoc_files/frontiers.csl manuscript.md -o builds/manuscript.docx

manuscript.pdf:
	pandoc --latex-engine=xelatex --variable mainfont='Times New Roman' --variable fontsize=12pt --smart --standalone -H pandoc_files/format.sty  --bibliography ~/Documents/bibliography/library.bib --csl=pandoc_files/frontiers.csl manuscript.md -o builds/manuscript.pdf
