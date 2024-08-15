-- SQL Query #4
-- Eman, Krupa, Maybelline


-- Supplier Expense Report 
-- Query: Generate a report showing the total expenses for each supplier in the last quarter. 
-- Entities: SUPPLIER, INVOICE, EXPENSE

USE BAKERY;

SELECT 
SUPPLIER.SUPP_ID,
    SUPPLIER.SUPP_COMPANY,
    SUM(EXPENSE.EXPENSE_AMT) AS total_expenses
FROM 
    SUPPLIER 
JOIN 
    INVOICE ON SUPPLIER.SUPP_ID = INVOICE.SUPP_ID
JOIN 
    EXPENSE ON INVOICE.EXPENSE_ID = EXPENSE.EXPENSE_ID
WHERE 
    EXPENSE_DATE >= DATE_FORMAT(CURDATE() - INTERVAL 3 MONTH, '%Y-%m-01') AND EXPENSE_DATE < DATE_FORMAT(CURDATE(), '%Y-%m-01')
GROUP BY 
    SUPPLIER.SUPP_ID, SUPPLIER.SUPP_COMPANY;

-- Joined the Supplier and Expense table to see the total expenses. 
-- The WHERE clause filters the orders based on their expense date. It selects the expenses made in the last quarter.
-- The results are then grouped by the supplier ID. We can then see the total expenses for each supplier in the last three months. 

