*"Sometimes, ABAPer's want to insert some records based on the index position.

"Pedestrian way
"ITAB has 100 entries, ITAB2 has 50 entries

LOOP AT ITAB into wa FROM 1 to 50.
  append wa into ITAB. 
ENDLOOP.

"Let kernel do that work which will improve performance of your code.
index = lines( ITAB ) + 1.
INSERT LINES OF ITAB FROM 1 TO 50 INTO ITAB2 INDEX index. 
