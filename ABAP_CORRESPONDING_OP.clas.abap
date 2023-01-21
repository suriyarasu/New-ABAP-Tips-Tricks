*"How to copy matching column data to target tables with new syntax.
DATA(target_table) = CORRESPONDING #( source_table ).

*"Old-style syntax.
MOVE-CORRESPONDING source_table TO target_table.

*"What is the difference between MOVE-CORRESPONDING and CORRESPONDING( ) syntax?
*"CORRESPONDING( ) is a constructor, so it would initialize the target table for all columns data while copying fields from source_table. 
*"whereas MOVE-CORRESPONDING statements in contrast leaves the contents unchanged for not matching fields in the target structure.
