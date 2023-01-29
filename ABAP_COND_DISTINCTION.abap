*"To evaluate conditions, we can use COND #( ) operator 

DATA(value) = COND #( WHEN status = open  THEN 1
                      WHEN status = blocked THEN 0
                      ELSE 9).
                      
*"Old-style syntax
DATA value TYPE i.
IF status = open.
  value = 1.
ELSEIF status = blocked.
  value = 0.
ELSE.
  value = 9.
ENDIF.  
