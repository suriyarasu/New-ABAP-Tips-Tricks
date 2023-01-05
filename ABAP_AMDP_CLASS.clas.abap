**What are the differences between ADMP database procedure & AMDP database function

**AMDP DATABASE Procedure
----------------------------------------------------------------------------------
1 -> AMDP database procedure can be defined in any visibility section of the class
2 -> AMDP databse procedure can be created as instance method or static method in any visibility section
3 -> Method parameter's should be passed by Value using VALUE( )... pass by reference not supported
4 -> Paramter type must not be generic must be like elementry type or strcuture table type
5 -> Return type cannot be declared with RETURING parameter
6 -> only input parameter can be flagged as optional

**AMDP DATABASE Function
----------------------------------------------------------------------------------
1 -> AMDP database function can only be accessed by AMDP procedure / funciton method. cannot be directly
     called in ABAP program
2 -> can be created as instance method or static method
3 -> The method parameter must include a return value using "RETURNING" and having tabular data type
4 -> No class based exception declared using RAISING


CLASS CL_AMDP DEFINITION.

PUBLIC SECTION.

  "Table type with a structured row type
  TYPES tab_type TYPE STANDARD TABLE OF dbtab WITH EMPTY KEY.

INTERFACES : IF_AMDP_MARKER_HDB.

  METHODS amdp_meth
    IMPORTING VALUE(num) TYPE i,
    EXPORTING VALUE(tab) TYPE tab_type.
ENDCLASS.

CLASS CL_AMDP IMPLEMENTATION.

 METHOD amdp_meth
  BY DATABASE PROCEDURE
  FOR HDB  
  LANGUAGE SQLSCRIPT  
  OPTIONS READ-ONLY
  USING db_object.   "see comments further down
                         
"Beginning of the SQLScript code (note that it is not ABAP code although it looks similar)

  ... "Here goes SAPScript code
      "Note that an AMDP method implementation must not be empty.

"End of the SQLScript code
 ENDMETHOD.

ENDCLASS.
...

"Comments:
"  BY DATABASE PROCEDURE   -> Flags the AMDP method as AMDP procedure
"  FOR HDB                 -> Definess the database system where the method is to be used;
"                             currently, only HDB (SAP HANA database) is possible
"  LANGUAGE SQLSCRIPT      -> Defines the programming language of the database system
"  OPTIONS READ-ONLY       -> Specifies database-specific options
"  USING db_object.        -> Optional addition; specifies database objects;
"                             can also be AMDP procedures and functions    
