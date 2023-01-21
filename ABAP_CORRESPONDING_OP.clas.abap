*"How to copy matching column data to target structure with new syntax.
DATA(target_str) = CORRESPONDING #( source_str ).

*"Old-style syntax.
MOVE-CORRESPONDING source_str TO target_str.

*"What is the difference between MOVE-CORRESPONDING and CORRESPONDING( ) syntax?
*"CORRESPONDING( ) is a constructor, so it would initialize the target strurcture for all columns data while copying fields from source_str. 
*"whereas MOVE-CORRESPONDING statements in contrast leaves the contents unchanged for not matching fields in the target structure.
