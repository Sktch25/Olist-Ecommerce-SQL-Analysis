# Olist E-commerce Data Engineering & Analysis

## Project Overview
This project demonstrates a full-cycle SQL data workflow using the Brazilian Olist E-commerce dataset in **SQL Server Management Studio (SSMS)**. I transitioned raw CSV data into a structured relational database to perform financial, operational, and time-series analyses.

## Data Source
The dataset used in this project is the **Brazilian E-Commerce Public Dataset by Olist**, hosted on [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).
* **Dataset Size:** 100,000+ orders from 2016 to 2018.
* **Context:** This is real commercial data from Olist, the largest department store in Brazilian marketplaces.

## Technical Skills Demonstrated
* **Database Design:** Creating relational schemas with proper data types (`UNIQUEIDENTIFIER`, `DATETIME2`, `DECIMAL`).
* **ETL & Data Ingestion:** Mapping and importing 100k+ records using the SSMS Import Flat File Wizard.
* **Data Validation:** Writing scripts to audit row counts and ensure data integrity post-ingestion.
* **Advanced SQL:** Utilizing `INNER JOIN`, `DATEDIFF`, `GROUP BY`, and aggregate functions for business intelligence.

## Project Structure

### 01_Table_Setup.sql
Initializes the database environment. I designed the `raw_orders` table with a `PRIMARY KEY` on `order_id` and configured `raw_payments` to support a **one-to-many** relationship, allowing for orders split across multiple payment methods.

### 02_Data_Verification.sql
A quality control script used to verify that the ETL process was successful. It confirms that the total record counts (~99,441 for orders and ~103,886 for payments) match the source data.

### 03_Revenue_Analysis.sql
Provides a high-level financial summary by joining the orders and payments tables. This analysis categorizes revenue by `order_status` to distinguish between realized, pending, and lost revenue.

### 04_Logistics_Delivery_Performance.sql
Analyzes operational efficiency using the `DATEDIFF` function. This script compares "Actual Delivery Days" against the "Promised Delivery Window" to identify logistics bottlenecks and late shipments.

### 05_Sales_Trends.sql
A time-series analysis that extracts `YEAR` and `MONTH` from timestamps. It tracks monthly revenue growth, order volume, and Average Order Value (AOV) to identify seasonal trends, such as Black Friday spikes.

## How to Run This Project
1. **Setup:** Run `01_Table_Setup.sql` to create the table structures.
2. **Ingestion:** Use the SSMS Import Flat File Wizard to load the CSVs into `raw_orders` and `raw_payments`, ensuring data types match the schema in Step 1.
3. **Audit:** Run `02_Data_Verification.sql` to confirm the data landed correctly.

4. **Analysis:** Execute scripts 03, 04, and 05 to generate business insights.
