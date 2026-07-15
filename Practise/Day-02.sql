
select
pr.id as request_id ,
pr.status as current_status,
pr.created_at::date as created_date,
now()- pr.created_at as age
from packing_requests pr 
order by pr.created_at desc
limit 10;

SELECT pr.id,
       now() - pr.created_at AS age
FROM   packing_requests pr
WHERE  now()-pr.created_at  > INTERVAL '7 days';

select
distinct pr.status 
from packing_requests pr ;

select
MIN(pr.created_at) as "Oldest_Date",
MAX(pr.created_at) as "Newest_Date"
from packing_requests pr ;
 
SELECT DISTINCT pr.status FROM packing_requests pr;


select pr.id,pr.status ,pr.created_at 
from packing_requests pr
where pr.created_at >= '2026-05-01' and pr.created_at < '2026-06-01'
order by pr.created_at desc;

select count(*) 
from packing_requests pr 
where pr.status in ('PACKING_IN_PROGRESS','REJECTED') and pr.created_at >= '2026-04-01';


select count(*)
from packing_requests pr
where (pr.status = 'PACKING_IN_PROGRESS' or pr.status = 'REJECTED') and pr.created_at >= '2026-04-01'
--order by pr.created_at desc;

-- A: no parentheses (AND grabs first)
SELECT COUNT(*)
FROM   packing_requests pr
WHERE  pr.status = 'COMPLETED' OR pr.status = 'REJECTED' AND pr.created_at >= '2026-07-01';

-- B: parenthesized
SELECT COUNT(*)
FROM   packing_requests pr
WHERE  (pr.status = 'COMPLETED' OR pr.status = 'REJECTED') AND pr.created_at >= '2026-07-01';