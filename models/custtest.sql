with cust as(
    select top 5 * from test.customers
)select * from cust