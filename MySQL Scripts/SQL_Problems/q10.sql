/*Employee Training Status(Ronaldo) 

Query: Identify employees who have not completed mandatory training.  

Entities Involved: EMPLOYEE, ROLE, TRAINING  
Ronaldo Martinez
*/

SELECT *
FROM EMPLOYEE E
LEFT JOIN EMPLOYEE_TRAINING ET ON E.EMP_ID = ET.EMP_ID
WHERE ET.EMP_ID IS NULL;

/*
Employee Training table and Employee table are joined based on the EMP ID
Left Join is used to inlcude all values from the EMPLOYEE table 
WHERE ET.EMP_ID IS NULL;
This filters the query to select any EMP who's value is null in the Emp Training 
In other words if the ids in the employee table does not show up in the training it will be selected
*/