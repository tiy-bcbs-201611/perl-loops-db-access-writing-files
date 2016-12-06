use warnings;
use strict;
use Data::Dumper;

my %hash;

print("Value: ",
      $hash{"some_key"}->[0]->{"another_key"}->{"foo"}->[0],
      "\n");

print(Dumper(%hash));
