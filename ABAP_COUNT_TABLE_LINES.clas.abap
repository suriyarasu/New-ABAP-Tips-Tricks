*"How to count number of lines of an internal table with new syntax

DATA(total_count) = lines( IT_TAB ).

*"Old-style syntax
DATA : number_of_lines TYPE i.
DESCRIBE TABLE IT_TAB LINES number_of_lines. 

*"How to check line existence in an internal table with new syntax
IF line_exists( ITAB[ id = 1234 ] ).
  "...Program lines
ENDIF.
