#!/usr/bin/perl

open IN, "<", "Ex16.txt";		## Reading from Ex16.txt, <$ARGV[0] would work fine too!
open OUT1, ">", "Hsw.out";		## Writing to/overwriting Hsw.out
open OUT2, ">", "contig.out";	## Writing to/overwriting contig.out
open OUT3, ">"," Misc.out";		## Writing to/overwriting Misc.out

while ($line = <IN>){	## Run the following code line after line
						## for as long as there is a line left in the file described by filehandle IN
						
	chomp($line);		## Removing newline characters, if any
	
	if ($line =~ m/Hsw/){	## Searching for the exact pattern Hsw. The m is optional: $line =~ /Hsw/ would work too.
		print OUT1 "$line\n";
	}
	elsif ($line =~ m/contig/){ ## Searching for the exact pattern contig
		print OUT2 "$line\n";
	}
	else {	## Didn't find Hsw or contig? Do this instead.
		print OUT3 "$line\n";
	}
}
