#!/usr/bin/perl

use strict;
use warnings;
use Getopt::Long qw(GetOptions);

my @fasta;
my $out = 'mash.txt';
my $sort;
GetOptions(
	'fa|fasta=s@{1,}' => \@fasta,
	'out=s' => \$out,
	'sort' => \$sort,
);

system "mash sketch -o reference @fasta";
system "mash dist reference.msh @fasta > $out";

if ($sort){
	system "echo Sorting out Mash results -- See $out.sorted";
	system "sort -gk3 $out > $out.sorted";
}