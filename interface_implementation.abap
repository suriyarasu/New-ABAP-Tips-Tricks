*"We use interface to define same singature for the classes.
*"To call an interface method, we interface_name~(tilde)method.
*"But an actual name of this (~)symbol is "interface resolution operator".


INTERFACE lif_computer.
 METHODS display_laptop.
ENDINTERFACE.

CLASS LCL_COMPUTER DEFINITION.
  PUBLIC SECTION.
      INTERFACES lif_computer.
ENDCLASS.

CLASS LCL_COMPUTER IMPLEMENTATION.
  METHOD lif_computer~display_laptop.
   // ~ which is interface resolution operator.
    ..............
  ENDMETHOD.
ENDCLASS.


