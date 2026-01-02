/* Analyzing actual delivery times vs. estimated promises.
*/

USE [Olist_Ecommerce];
GO

SELECT 
    order_id,
    order_purchase_timestamp,
    order_delivered_customer_date,
    order_estimated_delivery_date,
    -- Calculate actual days to deliver
    DATEDIFF(day, order_purchase_timestamp, order_delivered_customer_date) AS Actual_Delivery_Days,
    -- Calculate promised delivery window
    DATEDIFF(day, order_purchase_timestamp, order_estimated_delivery_date) AS Promised_Delivery_Days,
    -- See if the delivery was late (Positive = Early, Negative = Late)
    DATEDIFF(day, order_delivered_customer_date, order_estimated_delivery_date) AS Days_Difference
FROM dbo.raw_orders
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL
ORDER BY Actual_Delivery_Days DESC;
GO