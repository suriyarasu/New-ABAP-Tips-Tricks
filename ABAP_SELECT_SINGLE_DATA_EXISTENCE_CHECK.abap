"Here's a way to check if the data exists in the Database table without using COUNT, or select columns names.

SELECT SINGLE @abap_true        
       FROM DB_TABLE
       WHERE FIELD1 = 'XYZ'
      INTO @DATA(data_exists).

IF data_exists = abap_true.
"...............
ENDIF.

SELECT SINGLE 'X'         "instead of @abap_true, you can use 'X'        
       FROM DB_TABLE
       WHERE FIELD1 = 'XYZ'
      INTO @DATA(data_exists).

IF data_exists = abap_true.
"...............
ENDIF.
