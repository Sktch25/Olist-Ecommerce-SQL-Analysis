use [Olist_Ecommerce];
go

select 
    o.order_status, 
    COUNT(distinct o.order_id) as [Total_Orders],
    SUM(p.payment_value) as [Total_Revenue]
from dbo.raw_orders as o
join dbo.raw_payments as p on o.order_id = p.order_id
group by o.order_status
order by [Total_Revenue] desc;