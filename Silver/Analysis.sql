-- Checks for NULLs or Duplicates in Primary Key
-- Expectation: No Result

SELECT 
    cst_id, COUNT(*)
FROM
    silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL
    OR cst_id = 0;

-- Check for unwanted Spaces
SELECT 
    cst_firstname, cst_lastname, cst_gndr
FROM
    silver.crm_cust_info
WHERE
    cst_firstname != TRIM(cst_firstname)
        OR cst_lastname != TRIM(cst_lastname)
        OR cst_gndr != TRIM(cst_gndr); 
        
-- Data Standardization & Consistency
SELECT DISTINCT
    cst_gndr
FROM
    silver.crm_cust_info;
    
SELECT DISTINCT
    cst_material_status
FROM
    silver.crm_cust_info;

select * from silver.crm_cust_info;