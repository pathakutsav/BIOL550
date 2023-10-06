#!/usr.bin/bash
# open IN, "<","BIOL550_Exercises/04_Perl/Inputs/Ex_07/Dracula.txt";
open IN, "<","$ARGV[0]";
@info = <IN>;
foreach $line (@info){
    print $line;
    exit();
}
