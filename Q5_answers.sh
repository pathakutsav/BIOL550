cd MidtermExam/Files/Desired_Outputs/Q5/Alphafold_high_TMscores.tsv.desired_output
counts.txt.desired_output  RaptorX_low_TMscores.desired_output
\S+\s+\bALPHAFOLD+\s+\S+\s+\S+\s+\S+\s+\b(0\.[5-9])
grep -P '\S+\s+\bALPHAFOLD+\s+\S+\s+\S+\s+\S+\s+\b(0\.[5-9])' ~/MidtermExam/Files/Inputs/Q5/mican.tsv > Alphafold_high_TMscores.tsv
\S+\s+\bRAPTORX+\s+\S+\s+\S+\s+\S+\s+\b(0\.[0-4])
grep -P '\S+\s+\bRAPTORX+\s+\S+\s+\S+\s+\S+\s+\b(0\.[0-4])' ~/MidtermExam/Files/Inputs/Q5/mican.tsv > RaptorX_poor_TMscores.tsv
grep -wc "ALPHAFOLD" ~/MidtermExam/Files/Inputs/Q5/mican.tsv > counts.txt
grep -wc "RAPTORX" ~/MidtermExam/Files/Inputs/Q5/mican.tsv >> counts.txt