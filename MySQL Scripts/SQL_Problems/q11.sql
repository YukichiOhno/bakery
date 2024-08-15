/*
Budget vs Expense Analysis 
Query: Compare the actual expenses against the budget for each department for the current fiscal year. 
Entities Involved: EXPENSE, BUDGET, DEPARTMENT 
Angelo Angel
*/

SELECT DEPARTMENT_BUDGET.DEPT_NAME, TOTAL_BUDGET - TOTAL_EXPENSE AS "Difference between budget and expenses"
FROM (
		SELECT D.DEPT_ID, DEPT_NAME, SUM(ALLOCATED_AMT) as TOTAL_BUDGET
		FROM BUDGET B
		JOIN DEPARTMENT D ON B.DEPT_ID = D.DEPT_ID
		GROUP BY DEPT_NAME
		ORDER BY DEPT_NAME
        ) AS DEPARTMENT_BUDGET
JOIN (
		SELECT D.DEPT_ID, DEPT_NAME, SUM(EXPENSE_AMT) AS TOTAL_EXPENSE 
		FROM EXPENSE E
		JOIN DEPARTMENT D ON E.DEPT_ID = D.DEPT_ID
		JOIN BUDGET B ON D.DEPT_ID = B.DEPT_ID
		GROUP BY DEPT_NAME
		ORDER BY DEPT_NAME
        ) AS DEPARTMENT_EXPENSE
        ON DEPARTMENT_EXPENSE.DEPT_ID = DEPARTMENT_BUDGET.DEPT_ID
ORDER BY TOTAL_BUDGET - TOTAL_EXPENSE DESC;

/*
Joined two virtual tables using subquery where the results of each table become a new temporary table
First table: Department Budget
Found the sum of all budgets for each department joining budget and department tables.
Second table: Department Expense
Found the sum of all expenses for each department joining all three tables.
Then I found the difference between budget and expenses leading to the result
I ordered the difference in a descending order
*/