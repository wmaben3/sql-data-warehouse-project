/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

IF OBJECT_ID('bronze.crm_cust_info','U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;

	GO
--Above syntax is added for each table, to check for object(table) exisitence. The code will delete and recreate the table with the added columns. 
  Do not use this for production as it will delete the former table along with all the date that is loaded. Int the table--
    
CREATE TABLE bronze.crm_cust_info (
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NVARCHAR(50),
	cst_gnder NVARCHAR(50),
	cst_create_date DATE
);

CREATE TABLE bronze.crm_prd_info(
prd_id       INT,
prd_key      NVARCHAR(50),
prd_nm       NVARCHAR(50),
prd_cost     INT,
prd_line     NVARCHAR(50),
prd_start_dt DATETIME,
prd_end_dt   DATETIME
);

CREATE TABLE bronze.crm_sales_details(
sls_ord_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);


CREATE TABLE bronze.erp_CUST_AZ12(
cid NVARCHAR(50),
bdate DATE,
gen NVARCHAR(50),
);

CREATE TABLE bronze.erp_LOC_A101 (
cid NVARCHAR(50),
cntry NVARCHAR(50),
);

CREATE TABLE bronze.erp_PX_CAT_G1V2(
id NVARCHAR(50),
cat NVARCHAR(50),
subcat NVARCHAR(50),
maintenance NVARCHAR(50),
);
