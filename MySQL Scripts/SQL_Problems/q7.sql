/*
Query #7
Maybelline Medrano
Catering Revenue
Query: Summarize the total revenue generated from catering services for each event type.  
Entities Involved: CATERING, EVENT 
*/

SELECT 
    EVENT.EVENT_TYPE,
    SUM(CATERING.CATER_REVENUE) AS TOTAL_REVENUE
FROM 
    EVENT
JOIN 
    CATERING ON EVENT.EVENT_CODE = CATERING.EVENT_CODE
GROUP BY 
    EVENT.EVENT_TYPE;
    
    
/*
Summary:
- Joined the Catering and Event tables to calculate revenue for each event type
- Calculated total revenue for each event type by summing up catering revenue
- Grouped by Event Type
*/  
