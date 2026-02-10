# Olist E-commerce Data Engineering & Analysis

## Project Overview
This project demonstrates a full-cycle data workflow using the Brazilian Olist E-commerce dataset. I transitioned raw CSV data into a structured relational database using **SQL Server Management Studio (SSMS)** for engineering, then performed advanced customer segmentation using **Python** in **PyCharm**.

## Technical Skills Demonstrated
* **Database Design:** Creating relational schemas with proper data types (`UNIQUEIDENTIFIER`, `DATETIME2`, `DECIMAL`).
* **ETL & Data Ingestion:** Mapping and importing 100k+ records using the SSMS Import Flat File Wizard.
* **Advanced SQL:** Utilizing `INNER JOIN`, `DATEDIFF`, `GROUP BY`, and aggregate functions for business intelligence.
* **Python Data Science:** Implementing RFM (Recency, Frequency, Monetary) analysis using `pandas` and `numpy`.
* **Data Visualization:** Creating distribution plots and segment breakdowns using `seaborn` and `matplotlib`.

## Project Structure

### 01_Table_Setup.sql
Initializes the database environment. I designed the `raw_orders` table with a `PRIMARY KEY` on `order_id` and configured `raw_payments` to support a **one-to-many** relationship.

### 02_Data_Verification.sql
A quality control script used to verify that the ETL process was successful by auditing record counts against source data.

### 03_Revenue_Analysis.sql
Provides a financial summary by joining orders and payments, categorizing revenue by `order_status` to distinguish realized vs. lost revenue.

### 04_Logistics_Delivery_Performance.sql
Analyzes operational efficiency using `DATEDIFF` to compare actual delivery days against the promised window, identifying logistics bottlenecks.

### 05_Sales_Trends.sql
A time-series analysis identifying seasonal trends, such as Black Friday spikes, and tracking Monthly Revenue Growth and Average Order Value (AOV).

### 06_RFM_Segmentation.py
A Python-based analysis that shifts the project from descriptive to predictive analytics:
* **Feature Engineering:** Aggregated customer behavior to calculate Recency (days since last purchase), Frequency (total orders), and Monetary (total spend).
* **Quintile Scoring:** Applied `pd.qcut` to rank customers into scores from 1-5.
* **Customer Personas:** Programmatically categorized users into segments like **Champions**, **Potential Loyalists**, and **At Risk** to drive marketing strategy.

## How to Run This Project
1. **SQL Setup:** Run `01_Table_Setup.sql` through `05_Sales_Trends.sql` in SSMS to build the database and run core analytics.
2. **Python Environment:** Open the project in PyCharm and install dependencies: `pip install pandas seaborn matplotlib`.
3. **Run RFM:** Execute `06_RFM_Segmentation.py` to generate the customer segment distribution chart and export the final `olist_rfm_analysis.csv`.
