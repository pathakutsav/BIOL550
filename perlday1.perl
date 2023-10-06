#!/usr/bin/perl

%hash = ('Juan'=>{'Score'=>75},'Julian'=>{'Score'=>85},'Utsav'=>{'Score'=>95});
foreach $key (sort{$hash{$b}{'Score'}<=>$hash{$a}{'Score'}}(keys(%hash))){
    print $key."\n";
}