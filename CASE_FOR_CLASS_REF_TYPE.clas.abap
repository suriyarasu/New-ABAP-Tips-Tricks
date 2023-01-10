*"Case distinction for class reference type / Interfaces
*"How to execute the some block of code based on class reference type / interface 

*"We can switch on reference types class / Interface using the CASE extension TYPE OF...


CASE type of account.
  WHEN TYPE bank_account INTO DATA(bank_account).
    " some processing ...
  WHEN OTHERS.
    " some processing ...
ENDCASE.

*"Old-way 
*"In a condition e.g. in an IF statement the IS INSTANCE OF operator can be used.

IF account IS INSTANCE OF bank_account.
  " some processing ...
ENDIF.
