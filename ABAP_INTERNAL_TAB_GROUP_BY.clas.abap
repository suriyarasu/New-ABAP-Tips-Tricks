**ABAPers have been using control break statement's like AT NEW, AT LAST, AT END OF for grouping the data or processing some logic at sprcific conditions.
**Now SAP has introduced new ABAP syntax for grouing an internal table rows based on specified key's just like an OPEN-SQL syntax "GROUP BY"

"

CLASS ZDEMO_INTERNAL_TABLE_GROUP DEFINITION.

PUBLIC SECTION.
    METHODS:  GET_GROUP_BY_DATA.
    
PRIVATE SECTION.
    DATA: WA_VBAP TYPE  VBAP,
          MEMBER  TYPE  VBAP,
          MEMBERS TYPE  STANDARD TABLE OF VBAP WITH EMPTY KEY.
          
ENDCLASS.

CLASS ZDEMO_INTERNAL_TABLE_GROUP DEFINITION.

METHOD GET_GROUP_BY_DATA.
    
    SELECT * 
            FROM VBAP INTO TABLE @DATA(LT_VBAP)
            UP TO 50 ROWS.
            
    "Grouping an internal table rows based on Key criteria
    "Grouping also can be done by more than one column.
    
    LOOP AT LT_ABAP INTO wa_vbap
                    GROUP BY wa_vbap-vbeln.
         WRITE :/ wa_vbap-vbeln.             
    ENDLOOP.
    
    "Grouping of one column by Representative Binding
    LOOP AT LT_VBAP INTO wa_vbap
                    GROUP BY wa_vbap-vblen.
        CLEAR memebers.
        LOOP AT GROUP wa_vbap INTO MEMBER.
            members = VALUE #( BASE members ( memeber ) ).
        ENDLOOP.
    ENDLOOP.
      
      CL_DEMO_OUTPUT=>DISPLAY( members ).
    
ENDMETHOD.

ENDCLASS.
