*"To evaluate conditions parallely in ABAP we can use new syntax.

DATA(status) = SWITCH string( Car_model
    WHEN Electric THEN 0
    WHEN Petrol   THEN 1
    WHEN Gas      THEN 2
    WHEN Diesel   THEN 3 ).
    
"Old-Style syntax
DATA status TYPE string.
CASE Car_model.
  WHEN Electric.
    status = 0.
  WHEN Petrol.
    status = 1.
  WHEN Gas.
    status = 2.
  WHEN Diesel.
    status = 3.
ENDCASE.
