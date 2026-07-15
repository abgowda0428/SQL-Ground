show search_path;

select table_schema,table_name
from information_schema.tables
where table_type = 'BASE TABLE'
order by table_name ,table_name ;

select status as s 
from packing_requests pr 
where status = 'PENDING';

select count(*)
from packing_requests pr 
where status = 'PACKED' or status ='Dispacthed' and pr.created_by = '';

select distinct status
from packing_requests pr ;

select * from packing_requests pr limit 5;

select
current_date as Today,
pr.movement_number as Mov_ID,
pr.started_at::date as Started_Time,
pr.status as Current_status,
now() - pr.started_at  as age,
DATE_TRUNC('month', pr.started_at) AS month_bucket
from packing_requests pr limit 5;

select
pr.id ,
pr.part_number ,
pr.created_at ::date,
extract(YEAR from pr.created_at),
now()-pr.created_at as Durations 
from packing_requests pr 
where id = '2fd6d51c-8264-4403-a957-ea893c291072' and
where pr.status = 'APPROVED';

select * from packing_requests pr 
where pr.transferred_qty <1000 and (pr.transferred_qty <>0 or pr.status = 'APPROVED');

select * from packing_requests pr 
where pr.supervisor_remarks like 'AP_';

-- Query A: no parentheses
SELECT COUNT(*)
FROM   packing_requests
WHERE  status = 'PACKED' OR status = 'PENDING' AND created_at >= '2026-07-01';

-- Query B: parentheses
SELECT COUNT(*)
FROM   packing_requests
WHERE  (status = 'PACKED' OR status = 'PENDING') AND created_at >= '2026-07-01';

select 
pr.part_number ,
pr.created_at 
from packing_requests pr 
order by pr.status, pr.created_at DESC;