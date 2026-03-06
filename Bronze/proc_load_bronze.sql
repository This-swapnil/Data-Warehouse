-- bronze.crm_cust_info()
SELECT '>> Truncating Table: bronze.crm_cust_info' AS log;
	
TRUNCATE TABLE bronze.crm_cust_info;

SELECT '>> Inserting Data Into: bronze.crm_cust_info' AS log;

LOAD DATA LOCAL INFILE '/mnt/sda3/Data Engineer/2026/Project/Data-Warehouse/datasets/source_crm/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- bronze.crm_prd_info
SELECT '>> Truncating Table: bronze.crm_prd_info' AS log;
TRUNCATE TABLE bronze.crm_prd_info;
	
SELECT '>> Inserting Data Into: bronze.crm_prd_info' AS log;

LOAD DATA LOCAL INFILE '/mnt/sda3/Data Engineer/2026/Project/Data-Warehouse/datasets/source_crm/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
	
-- bronze.crm_sales_details
SELECT '>> Truncating Table: bronze.crm_sales_details' AS log;
TRUNCATE TABLE bronze.crm_sales_details;
	
SELECT '>> Inserting Data Into: bronze.crm_sales_details' AS log;
LOAD DATA LOCAL INFILE '/mnt/sda3/Data Engineer/2026/Project/Data-Warehouse/datasets/source_crm/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- bronze.erp_loc_a101
TRUNCATE TABLE bronze.erp_loc_a101;
	
SELECT '>> Inserting Data Into: bronze.erp_loc_a101' AS log;
LOAD DATA LOCAL INFILE '/mnt/sda3/Data Engineer/2026/Project/Data-Warehouse/datasets/source_erp/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
    
-- bronze.erp_cust_az12
SELECT '>> Truncating Table: bronze.erp_cust_az12' AS log;
TRUNCATE TABLE bronze.erp_cust_az12;
	
SELECT '>> Inserting Data Into: bronze.erp_cust_az12' AS log;
LOAD DATA LOCAL INFILE '/mnt/sda3/Data Engineer/2026/Project/Data-Warehouse/datasets/source_erp/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- bronze.erp_px_cat_g1v2
SELECT '>> Truncating Table: bronze.erp_px_cat_g1v2' AS log;
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
	
SELECT '>> Inserting Data Into: bronze.erp_px_cat_g1v2' AS log;
LOAD DATA LOCAL INFILE '/mnt/sda3/Data Engineer/2026/Project/Data-Warehouse/datasets/source_erp/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;