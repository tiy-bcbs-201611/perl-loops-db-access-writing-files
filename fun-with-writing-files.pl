#!/usr/bin/env perl
use warnings;
use strict;

open(my $fh_replaced, ">", "replaced.txt");
open(my $fh_appended, ">>", "appended.txt");

print($fh_replaced         "A line of text.", "\n", "And another line.");
print($fh_appended         "A line of text.\n");
