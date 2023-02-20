"Use CONV #( ) operator to convert data types and save it in Temporary variable

DATA a_char(2) TYPE C.

"New-Style
a_char = `cc`.
methods_takes_string( CONV #( a_char ) ).

"Old-Style
DATA a_string TYPE string.

a_string = a_char.
methods_takes_string( a_string ).
