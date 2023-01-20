*"How to count number of lines of an internal table with new syntax

DATA(total_count) = lines( IT_TAB ).

*"Old-style syntax
DATA : number_of_lines TYPE i.
DESCRIBE TABLE IT_TAB LINES number_of_lines. 
