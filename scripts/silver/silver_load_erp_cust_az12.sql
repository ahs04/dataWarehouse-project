/*
===================================================
Silver ERP Customer AZ12 Table
===================================================
This script is used to insert information to the ERP Customer AZ12 Table for the Silver level.
Did data cleaning, data filtering, normalization, and double checked features before running.
*/

TRUNCATE silver.erp_cust_az12;

INSERT INTO silver.erp_cust_az12(
	cid,
	bdate,
	gen
)

SELECT
	CASE WHEN cid LIKE 'NAS%' THEN SUBSTRING(cid, 4, LENGTH(cid))
		 ELSE cid
	END AS cid,
	CASE WHEN bdate > NOW() THEN NULL
		 ELSE bdate
	END AS bdate,
	CASE WHEN UPPER(TRIM(gen)) IN ('F', 'FEMALE') THEN 'Female'
		 WHEN UPPER(TRIM(gen)) IN ('M', 'MALE') THEN 'Male'
		 ELSE 'n/a'
	END AS gen
FROM bronze.erp_cust_az12