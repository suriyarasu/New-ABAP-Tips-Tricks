"To build an unqiue standard table from another table use Three-steps algorithm MOVE, SORT, DELETE Duplicates
"instead of one-step apporach beacuse for larger tables three-step algorithm is preferable.

"One-step Approach
LOOP AT ITAB1 INTO WA.
  READ TABLE ITAB2 WITH KEY K = WA-K BINARY SERACH TRANSAPORTING NO FIELDS.
  IF SY-SUBRC <> 0.
    INSERT WA INTO ITAB2 INDEX SY_TABIX.
  ENDIF.
 ENDLOOP.
 
 "Three-steps Algorithm.
ITAB2[] = ITAB1[].
SORT ITAB2 BY K.
DELETE ADJACENT DUPLICATES FROM ITAB2 COMPARING K.





