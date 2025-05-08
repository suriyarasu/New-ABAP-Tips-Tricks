"There 3 different types of structures supported by ABAP..
"1.Flat Structure   - It contains only elementary data types which has fixed length. there will be no internal tables.
"2.Nested Structure - atleast one component of structure has substructure which will refer to another structure.
"3.Deep Structure   - It contain atleast one internal table, reference type, or string component.
**Flat Structure**
DATA:  BEGIN of addr,
        name type c LENGTH 30,
        ....
        END of addr.
**Nested Structure**        
DATA:  BEGIN of addr_deep,
        begin of person,
        name type c LENGTH 30,
        end of person,
        begin of city,
        zipcode type string,
        end of city,
        END of addr_deep.
**Deep Structure**      
DATA: BEGIN OF address_d,
        name    TYPE string VALUE `SAP`, 
        details TYPE TABLE OF some_table WITH EMPTY KEY, 
      END OF address_d.

"The following structure looks simple, but it will be consider as Deep structure as it has String component.
DATA: BEGIN OF company,
        name   TYPE string VALUE `SAP AG`,
        code TYPE string VALUE `Land 11222`,
      END OF company.
