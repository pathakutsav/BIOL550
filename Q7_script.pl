#!/usr/bin/perl
my @fasta_files = @ARGV; #taking input from ARGV and storing them in fasta_files
my $ref_prot_file = "~/MidtermExam/Files/Inputs/Q7/reference.prot"; #storing the protein location in ref_prot_file
my $query_num = 0; #defining query_num to 0
foreach $query_num (sort @fasta_files)
{
    my $x= "diamond blastp \ --query $query_prot_file \ --db $ref_prot_file \ --out run_$query_num.diamond.6 \ --outfmt 6 qseqid sseqid\ --max-target-seqs 1";
    system($x);
    $query_num++;  
}
print("task is finished");