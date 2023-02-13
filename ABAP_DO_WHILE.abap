"If you can use WHILE instead of DO..ENDDO. then please do so.
"As WHILE is eaiser to understand and faster to execute.

"DO...ENDDO
DATA C TYPE C.
DO.
   IF C EQ SPACE.
   write: 1.
   ENDIF.
   EXIT.
ENDDO.

"WHILE..ENDWHILE
WHILE C = SPACE.
  write: 1.
ENDWHILE.
   
   
