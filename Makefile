all: main.tex introduzione.tex images/er.png
	lualatex --output-format=pdf main.tex
	mv main.pdf Tesina.pdf

images/er.png: Modello-ER.dot
	dot -Tpng -o ./images/er.png Modello-ER.dot
