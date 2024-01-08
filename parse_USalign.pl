#!/usr/bin/env perl

open OUT, ">", "parsed_USalign_results.tsv";
foreach $files (@ARGV){
    open IN, "<", $files;
    while ($line =<IN>){
        chomp($line);
        @columns = split /\s+/, $line;
        $ref_file = $columns[0];
        $chain = $columns[1];
        $tmscore = $columns[2];
        $rmsd = $columns[4];
        $category;
        if ($tmscore>0.7 && $rmsd<2.0)
        {
            $category="Awesome";

        }
        elsif($tmscore>0.7 && $rmsd>2.0)
        {
            $category="Ok";
        } 
        elsif($tmscore<0.5 && $rmsd>2.0)
        {
            $category="Bad";
        }
        else
        {
            $category="Questionable";
        } 
        }
}