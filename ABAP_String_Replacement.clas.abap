**Sometime ABAPer's wants to replace particular characters in a string variable / group of rows in a table.
**To achieve the above scenario, we can use replace fuction

DATA(s1) = `Hello UI5 and ABAP Dev`.

//To replace a string based on substring matches
//We can ignore the case-sensitive with optional addition **CASE**
DATA(s2) = REPLACE( val = s1 sub = `UI5` with = `X-Mas` CASE = ABAP_FALSE ). // Result Hello X-Mas and ABAP Dev

//To count a number of occurances and replacements in a string
REPLACE ALL OCCURRENCES OF `UI5` IN s1 WITH 'X-Mas'
            REPLACEMENT COUNT DATA(LV_COUNT)     "1 (number of replacements)
            REPLACEMENT OFFSET DATA(LV_OFFSET)   "6 (Last occurance of replacement)
            REPLACEMENT LENGTH DATA(LV_LEN).     "5 (length of the last substring inserted)

//To replace a string in a table
//Note that the internal table shoule be a String Type
DATA(STR_TAB) = VALUE string_table( (`X0X`) (`Y0Y`) (`Z0Z`) ).

REPLACE ALL OCCURENCES OF '0'
                        IN TABLE str_tab with ``
                         RESPECTING CASE.  "XX YY ZZ 
