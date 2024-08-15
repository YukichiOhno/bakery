/*
Query #8
Maybelline Medrano

Nutritional Information Compliance
Query: List all products that do not have updated nutritional and allergy information.  
Entities Involved: PRODUCT, NUTRITIONAL_INFO, PRODUCT_ALLERGY  
*/

SELECT PROD_ID, PROD_NAME, PROD_DESC
FROM PRODUCT
WHERE PROD_ID NOT IN (
    SELECT DISTINCT PROD_ID
    FROM NUTRITIONAL_INFO
)
AND PROD_ID NOT IN (
    SELECT DISTINCT PROD_ID
    FROM PRODUCT_ALLERGY
);

/*
Selected all products where their IDs do not exist in the NUTRITIONAL_INFO table and the PRODUCT_ALLERGY table.
First Subquery: Selected distinct product IDs from the NUTRITIONAL_INFO table, not allowing for duplicates.
Second Subquery: Selected distinct product IDs from the PRODUCT_ALLERGY table, not allowing for duplicates.
Then, filtered the products from the PRODUCT table where their IDs are not in both subqueries.
*/