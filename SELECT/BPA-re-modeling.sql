select * from items; -- select all colums from the Table

select i.part_number ,i.master_serial_no  from items i ; -- select only specific colums from Table

select i.part_number as name, i.unit_price_usd as part_price from items i ; -- Colums alias

select i.unit_price_usd * 95.86 as indian_part_price  from items i ; --Expressions/ Computed colums

select concat(i.part_number , ':', i.master_serial_no ) as Lable_list from items i ; -- String Concatenation

select distinct i.uom  from items i ; --Distinct Unique values 

select i.uom,i.is_active  from items i ; -- Distinct on multiple colums (Unique Combination)

-- DISTINCT ON (Postgres-specific) — first row per group, needs matching ORDER BY

select distinct on (i.uom) i.uom, i.part_number 
from items i
order by i.uom, i.part_number; 

SELECT DISTINCT ON (uom, is_active) uom, is_active, part_number, unit_price_usd
FROM items
ORDER BY uom, is_active, unit_price_usd DESC;

/*
 DISTINCT ON (...) columns → must lead ORDER BY, order matters.
 Rest of ORDER BY → optional, only add columns you care about for tiebreaking/row-selection.
 SELECT list → independent; doesn't need to match ORDER BY at all.
 DISTINCT ON: you're thinking "for each X, give me exactly one row — the latest/highest/lowest/first one" — that's the pattern it's built for.
 */

select * from items i order by created_at desc limit 10 offset 2; -- Limit & offset -> Skip the first 2 rows, then give me the next 10.