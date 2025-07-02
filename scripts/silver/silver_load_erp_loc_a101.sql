/*
===================================================
Silver ERP Loc A101 Table
===================================================
This script is used to insert information to the ERP Loc A101 Table for the Silver level.
Did data cleaning, data filtering, normalization, and double checked features before running.
*/

TRUNCATE silver.erp_loc_a101;

INSERT INTO silver.erp_loc_a101(
	cid,
	cntry
)

SELECT
	REPLACE(cid, '-', '') cid,
	CASE WHEN TRIM(cntry) = 'DE' THEN 'Germany'
		 WHEN TRIM(cntry) IN ('US', 'USA') THEN 'United States'
		 WHEN TRIM(cntry) = '' OR  cntry IS NULL THEN 'n/a'
		 ELSE TRIM(cntry)
	END AS cntry
FROM bronze.erp_loc_a101