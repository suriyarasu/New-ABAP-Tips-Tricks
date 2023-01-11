*"How to skip implementation of Interface methods if sub-class implementing an interface.
*"In an old-fashied way we need to implement all the methods of an interface..

*"Now, we can skip behavior implementation part using "DEFAULT IGNORE" ADDITION.
*"With addition "DEFAULT IGNORE" we advise ABAP to handle the call to this method if not implemented as a call to empty implementation.

INTERFACE account.
  METHODS new_method DEFAULT IGNORE.
ENDINTERFACE.

"*With addition ""DEFAULT FAIL" we advise ABAP to raise an exception CX_SY_DYN_CALL_ILLEGAL_METHOD if not implemented method is called.
*"This is the default behavior.

INTERFACE account.
  METHODS new_method default FAIL.
ENDINTERFACE.


