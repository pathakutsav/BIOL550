#!#usr/bin/bash
mkdir ~/Assignments/Assignment_1/SequencingData 
## the command above makes SequencingData directory at the given location
cp -a /media/Data_2/BIOL550/tmp/*fastq.gz ~/Assignments/Assignment_1/SequencingData
## we copy all the files with a fastq.gz extension to SequencingData 
gunzip ~/Assignments/Assignment_1/SequencingData/*.fastq.gz
## We decompress the fastq.gz files 
cd ~/Assignments/Assignment_1/SequencingData/
##moving to SequencingData now
cat ~/Assignments/Assignment_1/SequencingData/*.fastq > PacBio_reads.fastq
#we concatenate all .fastq files in this folder to PacBio_reads.fastq
chmod 644 ~/Assignments/Assignment_1/SequencingData/PacBio_reads.fastq 
## permission of PacBio_reads.fastq is modified to 644 that is -rw-r--r--
ln -s PacBio_reads.fastq symbolic.txt
## a symbolic link for PacBio_reads.fastq is made
echo "All Done";
## this command tells us that the script has finished it's execution
