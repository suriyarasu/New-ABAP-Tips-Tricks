"Use WHERE conditions instead of CHECK-statements when you fetch records using SELECT..ENDSELECT..The database
"system can then use an INDEX(if possible) and it will reduce network load considerably less

" CHECK statement.
SELECT * FROM SBOOK INTO SBOOK_WA.
 CHECK: SBOOK_WA-CARRID = 'LH' AND
        SBOOK_WA-CONNID = '040'.
ENDSELECT.

"WHERE Condition.
SELECT * FROM SBOOK INTO SBOOK_WA
         WHERE CARRID = 'LH' AND
               CONNID = '040'.
ENDSELECT.


               

        
 

