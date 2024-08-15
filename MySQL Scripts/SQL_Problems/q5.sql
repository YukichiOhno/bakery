/*
Product Review Insights (Krupa, Maybelline) 
Query: Identify the top 3 products with the highest and lowest average ratings.  
Entities Involved: PRODUCT, RATING  
*/

-- Calculate the highest average rating for each product
SELECT 
    PRODUCT.PROD_ID,
    PRODUCT.PROD_NAME,
    AVG(RATING.STAR_RATING) AS average_rating
FROM 
    PRODUCT 
JOIN 
    RATING ON PRODUCT.PROD_ID = RATING.PROD_ID
GROUP BY 
    PRODUCT.PROD_ID, PRODUCT.PROD_NAME
ORDER BY 
    average_rating DESC
LIMIT 3;

-- Calculate the lowest average rating for each product
SELECT 
    PRODUCT.PROD_ID,
    PRODUCT.PROD_NAME,
    AVG(RATING.STAR_RATING) AS average_rating
FROM 
    PRODUCT 
JOIN 
    RATING ON PRODUCT.PROD_ID = RATING.PROD_ID
GROUP BY 
    PRODUCT.PROD_ID, PRODUCT.PROD_NAME
ORDER BY 
    average_rating ASC
LIMIT 3;



/*
We selected the Product Id and Product name from the product table, and created another column for average rating that takes the star rating from the rating table
We joined the rating table and product table using the product id and grouped by the product id and product name
We ordered it by either desc or asc to get the highest and lowest average
We limit 3 to only get the first three average ratings
*/