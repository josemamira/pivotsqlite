# pivotsqlite
This is only a pivot example for sqlite.
As you know SQLite don't admit  dynamic sql querys. For this reason I write an example of query.
This is most common in climate date imported from CSV files with a lot of observatory data.

In the example we have one a table with 3 columns:
|DATE (text)     |VALUE   (float)                |#ID OBSERVATORY (integer)    |
|----------------|-------------------------------|-----------------------------|
|YYYYMMDD        |Temperature,precipitation...   |An #id                       |
|19561225        |18.2                           |123                          |
|19561226        |10.4                           |123                          |
|...             |...                            |...                          |
|20220209        |21.8                           |456                          |

Date is a text with this format: YYYYMMDD

# Pivot query
This query (pivot.sql) pivot (transpose in Spreads apps) creating a new table with new columns, one for each year
Example:

|1951|1952|1953|
|----|----|----|
|3.1 |2.5 |9.2 |
|9.5 |12.5|3.2 |
|13.1|25.5|19.2|


# Files
schema.sql
data.sql: Only 3 year of data for 3 observatories
pivot.sql


Run this files in your SQLite browser or webs like sqlfiddle.com and enjoy
