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


select i.part_number ,i.unit_price_usd from items i
where i.unit_price_usd >= 25;

select i.part_number , i.master_serial_no from items i 
where i.master_serial_no is not null;


select i.part_number , i.weight_grams from items i
where i.weight_grams between 50 and 200;

select item_name
from items
where item_name between 'A' and 'M'
order by item_name;

select i.part_number ,i.item_name ,i.unit_price_usd 
from items i
where i.is_active = True
order by i.unit_price_usd desc nulls last;

select * from items i 
where i.weight_grams is null or i.unit_price_usd is null;

select * from items i 
where i.uom in ('KG', 'PCS', 'BOX');

select * from items i 
where i.item_name ilike '%Steel%';

select * from items i 
where i.unit_price_usd between 20 and 80 and i.is_active = true

select count(i.id ) from items i ;

select avg(i.unit_price_usd ) from items i; 

select MAX(i.weight_grams ),MIN(i.weight_grams ) from items i ;

select distinct on (i.uom) i.uom,i.part_number, i.unit_price_usd from items i 
order by i.uom, i.unit_price_usd desc nulls last;

select * from items i 
where i.unit_price_usd is not null
order by i.unit_price_usd asc limit 5;

select * from items i 
where i.created_at >= now() - interval '90 Days'
order by i.created_at  asc limit 5 offset 3;

select * from items i 
where i.part_number  not ilike '%TEST' and i.is_active = true;