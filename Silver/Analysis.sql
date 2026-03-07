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


-- silver.crm_prd_info

SELECT 
    prd_id, COUNT(*)
FROM
    silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL
    OR prd_id = 0;
    
-- Check for NULLS or Negative Numbers
SELECT 
    prd_cost
FROM
    bronze.crm_prd_info
WHERE
    prd_cost <= 0 OR prd_cost IS NULL;
    
-- Check for Invalid Date Orders
SELECT 
    *
FROM
    silver.crm_prd_info
WHERE
    prd_end_dt < prd_start_dt;
    
SELECT 
    count(*)
FROM
    silver.crm_prd_info;