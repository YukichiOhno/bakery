-- SQL QUERY #6
-- Barry McCoy, Angelo Angel

-- Promotion Effectiveness
-- Query: Calculate the increase in sales for products that were part of a promotion in the last month.
--   (Pick the products involved in any promotion that were bought last month.
--    Then calculate the total amount paid for each product.
--    Meaning that a product can be in at least two promotions but still want the total sales for each product)
-- Entities: PRODUCT, PROMOTION, SALES_REPORT

-- Note: Due to lack of results (No pay dates pertaining to march 2024), I focused on picking the march as the month only

USE BAKERY;

-- 6
SELECT PROD_NAME, SUM(PAY_AMOUNT) AS SALES_AMT
FROM PRODUCT P
JOIN ORDER_LINE OL ON P.PROD_ID = OL.PROD_ID
JOIN PLACED_ORDER O ON OL.ORDER_ID = O.ORDER_ID
JOIN PAYMENT PA ON O.ORDER_ID = PA.ORDER_ID
WHERE P.PROD_ID IN (
					SELECT DISTINCT(PROD_ID)
					FROM PRODUCT_PROMOTION
					ORDER BY PROD_ID
                    )
	AND MONTH(PAY_DATE) = 3
GROUP BY P.PROD_ID
ORDER BY SALES_AMT DESC;

-- Select the Product ID to identify each product involved in a promotion to calculate total sales.
-- We join the PRODUCT, PLACED_ORDER, ORDER_LINE, and PAYMENT tables.
-- We use Distinct product IDs from the PRODUCT_PROMOTION table to ensure that we're considering only products which are from a promotion.
-- We filter to include the data only in March, for PAY_DATE = 3.
-- Group the results by Product ID which displays the data separately. 




