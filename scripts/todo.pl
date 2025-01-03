#!/usr/bin/env perl

use v5.38;

my $dir = "."; # cartella corrente
my @texfiles = glob($dir . "/*.tex"); # lista di file con estensione .tex
my $i = 1;
# per ogni file trovato:
##   apri il file
##   per ogni riga:
###      stampa a schermo se iniza con "% TODO"
##   chiudi file
foreach (@texfiles) {
  open(my $in, "<", $_); # $in è il file handle creato da open
  while(<$in>){ # <$in> legge una riga dal file-handle $in
    if(/^\% TODO/) { # fa il match con stringhe che iniziano con "% TODO"
      print $i . ": ";
      print $_; # semplice stampa
      $i = $i +1;
    }
  }
  close($in); # chiude il file (evita leak)
}
