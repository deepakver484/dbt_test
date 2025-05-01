{{config(materialized='table')}}

select 
    c.customerid, 
    concat(firstname, ' ', lastname) AS "Full Name",
    count(OrderId)
from 
    test.customers as c
left join 
    test.Orders as o
on c.customerid = o.customerid
group by c.customerid,
concat(firstname, ' ', lastname)
