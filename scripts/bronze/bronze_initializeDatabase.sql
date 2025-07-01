/*
=================================================
Create Database and Schemas
=================================================
Script Purpose:
	This script is to create the initial database and schemas for the data warehouse.
	If it exists, it is dropped and recreated. Also sets up three schemas: bronze, silver, and gold.

Warning:
	This database will drop if the name of the database 'DataWarehouse' exists. All data will be 
	permanently deleted. Proceed with caution.
*/

-- Create DATABASE 'DataWarehouse' --
DROP DATABASE DataWarehouse;
CREATE DATABASE DataWarehouse;


-- Create SCHEMAS -- 
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
