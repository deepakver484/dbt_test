
{{config(materialized='table')}}
select 
    co.customerid,
    fullname,
    cnt,
    date_of_birth
from
    {{ref('customersOrders')}} as co
join
    {{ref('custtest')}} as ct
ON co.customerid = ct.customerid
