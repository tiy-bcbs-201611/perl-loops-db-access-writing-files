#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;

my $stripes = "The quick brown fox and I jumped over the lazy dogs, SIR!";
my $address = "1965 Ivy Creek Blvd., Durham, NC 27707";
my $favorite_conversation = "Not yours.";

my @matches = $address =~ m/(^\w+|\w+$)/g;
print("The number of matches is: ", scalar(@matches), "\n");
print(Dumper(@matches));
