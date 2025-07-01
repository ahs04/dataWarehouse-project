/*
======================================================================
Loading Data to Bronze Level Tables
======================================================================

This loads data to each of the bronze level tables from the CSV files.
Two steps for this process, 1. Truncates the data in the tables. 2. Load data to the tables
*/

TRUNCATE bronze.crm_cust_info;
COPY bronze.crm_cust_info
FROM 'filepath'
WITH (
	FORMAT csv,
	HEADER TRUE,
	DELIMITER ','
);

TRUNCATE bronze.crm_prd_info;
COPY bronze.crm_prd_info
FROM 'filepath'
WITH (
	FORMAT csv,
	HEADER TRUE,
	DELIMITER ','
);

TRUNCATE bronze.crm_sales_details;
COPY bronze.crm_sales_details
FROM 'filepath'
WITH (
	FORMAT csv,
	HEADER TRUE,
	DELIMITER ','
);

TRUNCATE bronze.erp_cust_az12;
COPY bronze.erp_cust_az12
FROM 'filepath'
WITH (
	FORMAT csv,
	HEADER TRUE,
	DELIMITER ','
);

TRUNCATE bronze.erp_loc_a101;
COPY bronze.erp_loc_a101
FROM 'filepath'
WITH (
	FORMAT csv,
	HEADER TRUE,
	DELIMITER ','
);

TRUNCATE bronze.erp_px_cat_g1v2;
COPY bronze.erp_px_cat_g1v2
FROM 'filepath'
WITH (
	FORMAT csv,
	HEADER TRUE,
	DELIMITER ','
);
