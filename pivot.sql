SELECT DISTINCT anyo, group_concat(valor, ',') OVER (PARTITION BY anyo) AS group_concat
FROM (select substr(fecha,1,4) as anyo, valor from obs where obs=1) t;

SELECT 
       MAX(CASE WHEN "anyo" == '1951' THEN valor END) as 'a1951',
       MAX(CASE WHEN "anyo" == '1952' THEN valor END) as 'a1952',
       MAX(CASE WHEN "anyo" == '1953' THEN valor END) as 'a1953',
	   MAX(CASE WHEN "anyo" == '1954' THEN valor END) as 'a1954'	   
FROM (select t.*,
             row_number() over (partition by anyo ) as seq
      from (select substr(fecha,1,4) as anyo, valor from observaciones where obs=1) t
     ) t
GROUP BY t.seq;
