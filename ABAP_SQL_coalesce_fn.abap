"The null value is a special value returned by Database. if you would like to replace a null with any other values,
"you can use coalesce function in ABAP.
MODIFY zdemo_output FROM TABLE @(VALUE ( roll_no = 1 name = 'x')
                                       ( roll_no = 2 name = 'y')
                                        ( roll_no = 3 ) ).
"Please note that here roll_no = 3 returns null value for a name column.
"in such a case, coalesce function can be used to replace with other values.

SELECT 
       roll_no,
       coalesce( name, '#' ) AS coalesce1,
       FROM zdemo_output.
*Table Output
*roll_no    COALESCED1
*1            x             
*2            y             
*3            #             
