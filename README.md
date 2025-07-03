# Data Warehouse Project
This project is using PostgreSQL to build a data warehouse with ETL processes for business ready data for analysis, reporting, and machine learning. This involves using a test dataset and incorporating three layers to go from source layer to the targeted file.

## Background Information
### Specifications
- Two data sources are from systems that is provided as .csv files
- Only focus on latest scope, do not focus so much on historical scope
- Combine data sources into one data model for analytical queries and for future usage
- Make sure to check for quality issues and data integrity before the data is business ready

### Data Architecture Method
#### Bronze Level
- Importing raw, unprocessed data to this level
- For identifying and tracing bugs
- Importing the entire table at once
- Initializing database, creating tables using DDL, and creating load scripts for each CSV file to the level

#### Silver Level
- Before uploading the files to the silver level, I had to check and know what the data is about
- Data cleaning by checking for nulls, data integrity, unwanted spaces in strings, and data consistency
- Able to import data from bronze level by pretty much copying the data types from bronze level but adding columns when needed
- Validating the changes by running tests and queries

#### Gold Level
- Created business level objects by looking and understanding the tables in the silver layer
- Applying dimension and facts tables for customers, products, and sales for business-ready analysis
- Constructed views for dimension and fact tables for analysis later in the pipeline
- Drawed data model, data catalog, and data flow for the data warehouse for visual understanding
