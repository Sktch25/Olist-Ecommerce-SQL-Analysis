USE [Olist_Ecommerce];
GO

-- Create the orders table
CREATE TABLE dbo.raw_orders (
    order_id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    customer_id UNIQUEIDENTIFIER NULL,
    order_status VARCHAR(50) NULL,
    order_purchase_timestamp DATETIME2(7) NULL,
    order_approved_at DATETIME2(7) NULL,
    order_delivered_carrier_date DATETIME2(7) NULL,
    order_delivered_customer_date DATETIME2(7) NULL,
    order_estimated_delivery_date DATETIME2(7) NULL
);
GO

-- Create the payments table
CREATE TABLE dbo.raw_payments (
    order_id UNIQUEIDENTIFIER NOT NULL,
    payment_sequential INT NULL,
    payment_type VARCHAR(50) NULL,
    payment_installments INT NULL,
    payment_value DECIMAL(18, 2) NULL
);
GO