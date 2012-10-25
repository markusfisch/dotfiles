#!/usr/bin/env perl

my $s = join( '', <STDIN> );

# remove comments
$s =~ s¦/\*[^*]*\*+([^/][^*]*\*+)*/¦¦g;

# remove newlines and white space at the beginning and at the end of lines
$s =~ s/[\t ]*[\r\n]+[\t ]*//g;

# condense tabs and blanks
$s =~ s/[\t ]+/ /g;

# remove unnecessary blanks
$s =~ s/[ ]+\{/{/g;
$s =~ s/([:\(\{,;])[ ]+/\1/g;
$s =~ s/[ ]+([\)\}])/\1/g;

print $s . "\n";
