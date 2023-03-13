"Whenever possible use Column updates instead of single-row updates to update the database tables
"As it will reduce network load considerbly less.

"Single-Row Update
SELECT SINGLE * FROM ZVBAK INTO ZVBAK_WA WHERE SNO = 1.
   ZVBAK_WA-KUNNR = 22.
  UPDATE ZVBAK FROM ZVBAK_WA.
  
"Column Update
 UPDATE ZVBAK SET KUNNR = 22.

