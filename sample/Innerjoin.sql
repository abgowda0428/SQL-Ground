use MyDatabase;

go;

select * from customers;
select * from orders;

-- Basic Inner Join 

select 
T1.first_name,
T2.sales
from customers as T1
inner join orders as T2
on T1.id = T2.customer_id;