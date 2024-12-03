#!/usr/bin/env perl
use v5.38;

my @entita = [ "membro_", "report_", "sensore_" ];

# leggi Modell-ER.dot
my $input;
open $input, '<', "Modello-ER.dot";
my @er = <$input>;

# scrivi l'estratto in un file nel formato "entita_.dot"
my @temp;
my $out;
# foreach (@entita) {
#     @temp = grep( @er, $_ );
#     open $out, '>', $_ . ".dot";
#     print $out, @temp;
# }

@temp = grep @er, "^membro";
open $out, '>', "membro_.dot";
print $out, @temp;
# estrai ogni entità tramite grep
# copia ogni entità nel suo file

