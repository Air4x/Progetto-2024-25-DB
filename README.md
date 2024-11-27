# Progetto-2024-25-DB
Repository per il progetto del corso di Basi di Dati della Federico II

## Dipendenze
### Linux
- perl
- lualatex
- make
- graphviz

### Windows
- choco: https://chocolatey.org/install#individual
- perl: `choco install strawberryperl`
- lualatex: `choco install miktex.install`
- make: `choco install make`
- graphviz: `choco install graphviz`

# Scripts
## todo.pl
Stampare a video tutti i *TODO* presenti nei file della tesina
### Linux
```shell
./scripts/todo.pl
```
### Windows
```shell
perl /scripts/todo.pl
```

## Compilare la tesina
```shell
make
```
crea il file `Tesina.pdf`