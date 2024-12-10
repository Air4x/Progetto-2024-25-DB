all: Tesina.tex introduzione.tex images/er.png
	lualatex --output-format=pdf Tesina.tex

images/er.png: Modello-ER.dot
	dot -Tpng -o ./images/er.png Modello-ER.dot

images/er.svg: Modello-ER.dot
	dot -Tsvg -o ./images/er.svg Modello-ER.svg
