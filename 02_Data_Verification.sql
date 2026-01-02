/* Confirming row counts after Wizard Import
*/

use [Olist_Ecommerce];
go

-- Check total records in Orders
SELECT 'Orders' AS Table_Name, COUNT(*) AS Row_Count 
FROM dbo.raw_orders;

-- Check total records in Payments
SELECT 'Payments' AS Table_Name, COUNT(*) AS Row_Count 
FROM dbo.raw_payments;