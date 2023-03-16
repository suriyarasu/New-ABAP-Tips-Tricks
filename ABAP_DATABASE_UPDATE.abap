"Whenever possible, use array operations instead of single-row operation to update database tables.
"Because frequent communication between the application program and database system produces considerable overhead.

"Single-row Inserts
LOOP AT ITAB INTO WA.
  INSERT INTO VENDORS VALUES WA. 
ENDLOOP.

"Array Insert
INSERT VENDORS FROM TABLE ITAB.
