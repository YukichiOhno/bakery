-- SQL QUERY #1
-- Eman, Krupa, Maybelline

-- Customer Loyalty Analysis 
-- Query: Identify customers who have made more than 5 purchases and are not yet enrolled in the Loyalty Program.
-- Entities: CUSTOMER, ORDER, LOYALTY_PROGRAM 

USE BAKERY;

SELECT CUST_FNAME, CUST_LNAME
FROM CUSTOMER JOIN (SELECT CUST_ID     
	FROM PLACED_ORDER
	GROUP BY CUST_ID
	HAVING COUNT(*) > 5) AS MoreThanFiveOrders ON CUSTOMER.CUST_ID = MoreThanFiveOrders.CUST_ID
	LEFT JOIN LOYALTY_PROGRAM ON CUSTOMER.CUST_ID = LOYALTY_PROGRAM.CUST_ID 
	WHERE LOYALTY_PROGRAM.CUST_ID IS NULL;
   
					
-- Joined the Customer and Order table to find all the orders and purchases made. 
-- Grouped by Customer ID and used the HAVING clause to filter customers who have made more than 5 orders. 
-- Left Join is used to inlcude all values from the Loyalty Program on the customer id where the loyalty program is null.
-- If a customer who has made more than 5 purchases and is not enrolled in the loyalty program they will be shown. 

