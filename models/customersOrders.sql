select 
    c.customerid, 
    concat(firstname, ' ', lastname) AS "fullname",
    count(OrderId) as cnt
from 
    test.customers as c
left join 
    test.Orders as o
on c.customerid = o.customerid
group by c.customerid,
concat(firstname, ' ', lastname)
