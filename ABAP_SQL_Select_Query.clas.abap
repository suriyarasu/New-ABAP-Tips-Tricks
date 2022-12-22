**Somtimes ABAP developer wants to access cross-client data from developement work-space.
**In order to access cross-client data we can use below ABAP open SQL statements

"To Access data from specific client
SELECT * FROM 
         DB_TABLE_NAME USING CLIENT '100'
         WHERE CONDITIONS = ''
         INTO TABLE @DATA(LT_TAB).
         
"To access all clients data 
SELECT * FROM 
         DB_TABLE_NAME USING ALL CLIENTS
         WHERE CONDITIONS = ''
         INTO TABLE @DATA(LT_TAB).
            
