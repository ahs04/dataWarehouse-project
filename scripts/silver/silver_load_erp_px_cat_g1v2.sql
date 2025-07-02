/*
===================================================
Silver ERP PX CAT G1V2 Table
===================================================
This script is used to insert information to the ERP PX CAT G1V2 Table for the Silver level.
Did data cleaning, data filtering, normalization, and double checked features before running.
*/

TRUNCATE silver.erp_px_cat_g1v2;

INSERT INTO silver.erp_px_cat_g1v2(
	id,
	ca,
	subcat,
	maintenance
)

SELECT
	id,
	ca,
	subcat,
	maintenance
FROM bronze.erp_px_cat_g1v2