all: Tesina.tex introduzione.tex images/er.png images/er-portante.png
	lualatex --shell-escape --output-format=pdf Tesina.tex

images/er.png: Modello-ER.dot
	dot -Tpng -o ./images/er.png Modello-ER.dot

images/er.svg: Modello-ER.dot
	dot -Tsvg -o ./images/er.svg Modello-ER.svg

images/er-portante.png: Modello-ER-portante.dot
	dot -Tpng -o ./images/er-portante.png Modello-ER-portante.dot
