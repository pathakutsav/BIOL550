#!/usr/bin.perl
%sequences;
$sequences=({'gene01'} => 'GTCGTAGTT',{'gene02'} => 'TCATGATTT',{'gene03'} => 'TGATGGTC');
print $sequences{'gene01'}."\n";
$sequences{'gene04'} = 'ATGCGTAATC';
print "%{sequences}";