#Question 1
scp /Users/utsavpathak/Desktop/BIOL550/A2_F23_files.tar.gz biolF23_23@216.47.151.148:~/Assignments/Assignment_2 
##uploaded files to server using the command above
grep -P '^>' Q1_fasta.fna ##Regular Expression for Question 1
#Question 2
grep -P 'RefSeq\sgene*' Q2_annotations.gff ##Regular Expression for Question 2
#Question 3
grep -P '\.[2-9]\s' Q3_protein.faa ##Regular Expression for Question 3
#Question 4
grep -P 'Arabidopsis.+scientific' Q4_names.dmp ##Regular Expression for Question 4
#Question 5
grep -P '^ATOM\s+\d+\s+CA\s+TYR\s+[BDE]' Q5_structure.pdb ##Regular Expression for Question 5
