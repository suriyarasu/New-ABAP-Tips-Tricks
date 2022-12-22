**Somtimes ABAP developer wants to access cross-client data from developement work-space.
**In order to access cross-client data you can use below ABAP open SQL statement

SELECT * FROM 
         DB_TABLE_NAME USING CLIENT '100'
         WHERE CONDITIONS = ''
         INTO TABLE @DATA(LT_TAB).
         
**To access all clients data you can use below ABAP open SQL statement
SELECT * FROM 
         DB_TABLE_NAME USING ALL CLIENTS
         WHERE CONDITIONS = ''
         INTO TABLE @DATA(LT_TAB).
            
