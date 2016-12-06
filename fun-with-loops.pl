#!/usr/bin/env perl
use warnings;
use strict;

#################################################
# LOOPING OVER HASHES                           #
#################################################

my %hash = (
  "name" => "Curtis",
  "age" => 44,
  "shirt_size" => "hairy"
);

while (my ($key, $value) = each %hash) {
  print($key, ":", $value, "\n");
}

foreach my $key (keys(%hash)) {
  print ($key, ":", $hash{$key}, "\n");
}

#################################################
# LOOPING OVER ARRAYS                           #
#################################################

my @list = (1, 2, "Three", "Stuff!!!!!!!!!!!");

# for (int i = 0; i < list.Length; i += 1) {
#   // do stuff in here
# }
for (my $i = 0; $i < scalar(@list); $i += 1) {
  print($i, ":", $list[$i], "\n");
}

my $whileIndex = scalar(@list) - 1;
while ($whileIndex) {
  print($whileIndex, ":", $list[$whileIndex], "\n");
  $whileIndex -= 1;
}

foreach my $item (@list) {
  print($item, "\n");
}
