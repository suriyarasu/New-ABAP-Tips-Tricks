"What is the difference between Hashed internal table and Sorted Internal Table.??
**We are more biased towards to Hashed table for reading operation due to it's nature of hasing algorithm
**But we are not sure about which one to use at what business case

"when to use Sortable Internal Table
"1)If you want to fast access the data based on their primary key's, then Sorted table is the best option.
"2)Sorted table administration cost is lower compared to Hashed internal tables
"3)Depending on the length of the keys and internal table size, data access in the context of a sorted table might be as fast as or even
   faster than hashed table

DATA itab TYPE SORTED TABLE OF data_type WITh UNIQUE KEY FIELDS...


"When to use Hashed Internal Table
1)When the table is large and primary key's are specified with the table, then Hashed table is better option for read operation
  as Hashed tables using hashing key to access the data but the Administration cost is high due to a greater memory overhead.
2)Data access is equally faster than sorted table which required constant time..

DATA  itab2 TYPE HASHED TABLE OF data_type WITH UNIQUE KEY FIELDS...

