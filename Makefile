all: Tesina.tex introduzione.tex immagini
	lualatex --shell-escape --output-format=pdf Tesina.tex

immagini: images/er.png images/er-portante.png images/er-finale.png

images/er.png: Modello-ER.dot
	dot -Tpng -o ./images/er.png Modello-ER.dot

images/er-portante.png: Modello-ER-portante.dot
	dot -Tpng -o ./images/er-portante.png Modello-ER-portante.dot

images/er-finale.png: Modello-ER-finale.dot
	dot -Tpng -o ./images/er-finale.png Modello-ER-finale.dot
