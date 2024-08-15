/*
Employee Performance Metrics (Ronaldo) 

Query: Find the employee who has processed the most number of orders in the last month.  

Entities Involved: EMPLOYEE, ORDER, SHIFT  

Ronaldo Martinez
*/
select ES.EMP_ID, COUNT(*) as order_count
from EMPLOYEE_SHIFT ES
JOIN  PLACED_ORDER PO on ES.ATTEND_ID = PO.ATTEND_ID
WHERE ORDER_DATE >= DATE_FORMAT(CURDATE() - INTERVAL 1 MONTH, '%Y-%m-01')
AND ORDER_DATE < DATE_FORMAT(CURDATE(), '%Y-%m-01')
GROUP BY ES.EMP_ID
ORDER BY order_count DESC
LIMIT 1;
/*
Selection of Columns: The query starts by selecting the EMP_ID column from the EMPLOYEE_SHIFT table and also calculates the count of orders made by each employee, naming it as order_count.

Table Join: It then specifies a join operation between the EMPLOYEE_SHIFT table (ES alias) and the PLACED_ORDER table (PO alias) based on the ATTEND_ID column.

Filtering with WHERE clause: The WHERE clause filters the orders based on their ORDER_DATE. It selects orders made from the beginning of the previous month up to the end of the previous month.

Grouping with GROUP BY: The results are then grouped by the EMP_ID. This groups together all orders made by the same employee.

Sorting with ORDER BY: The results are sorted based on the order_count column in descending order. This means that employees with the highest order count will appear first.

Limiting Results: Finally, the query limits the output to just one row, effectively returning the employee with the highest order count for the previous month.

*/