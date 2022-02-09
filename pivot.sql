-- This query are using a subquery (t) to extract year data and filter by one observatory. In this case we are using the #1 observatory (obs=1)
-- You must create as many columns as there are years in the table

SELECT 
       MAX(CASE WHEN "anyo" == '1951' THEN valor END) as 'a1951',
       MAX(CASE WHEN "anyo" == '1952' THEN valor END) as 'a1952',
       MAX(CASE WHEN "anyo" == '1953' THEN valor END) as 'a1953'
       -- add new years here
FROM (select t.*,
             row_number() over (partition by anyo ) as seq
      from (select substr(fecha,1,4) as anyo, valor from observaciones where obs=1) t
     ) t
GROUP BY t.seq;
