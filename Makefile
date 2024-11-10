all: main.tex introduzione.tex
	lualatex --output-format=pdf main.tex
	mv main.pdf Tesina.pdf
