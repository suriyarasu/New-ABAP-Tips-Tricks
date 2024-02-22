"Use of SQL operands in ABAP SQL Statements

"There are three operands used in the ABAP SQL statements. The typed literals are prefered way to be used in ABAP SQL statement as untyped literal considered extra cost in terms of performance
"Since they should be converted by the compiler and can be result in error at runtine if the value is not guareteed.
"1. Typed literals
"2. untyped literals
"3. Host variable

SELECT FROM SFLIGHT
      FIELDS
      planetype, "Column specified directly from DB table
      SFLIGHT~price, "Coulum selector used to set colunm name if multiple data sources in ABAP SQL
      'AIR FRANCE' AS flight_name, "untyped literal
       Char 'XYZ' AS flag, "Typed literal
       @max_count as num, "host variable
      WHERE carrid = 'CH'   "untyped literal
      AND   connid = Char 'US'. "Typed literal
  
