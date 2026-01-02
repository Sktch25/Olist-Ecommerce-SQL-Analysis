/* Analyzing monthly revenue growth and order volume.
*/

use [Olist_Ecommerce];
go

select 
    YEAR(o.order_purchase_timestamp) as [Year],
    MONTH(o.order_purchase_timestamp) as [Month],
    COUNT(distinct o.order_id) as [Total_Orders],
    SUM(p.payment_value) as [Monthly_Revenue],
    -- Calculate average order value for the month
    SUM(p.payment_value) / COUNT(distinct o.order_id) as [Avg_Order_Value]
from dbo.raw_orders as o
join dbo.raw_payments as p on o.order_id = p.order_id
where o.order_status = 'delivered'
group by
    YEAR(o.order_purchase_timestamp), 
    MONTH(o.order_purchase_timestamp)
order by [Year], [Month];
go