/* 
Question 1:
How many incidents were logged per day?

Purpose:
Establish baseline daily workload and identify natural variation
in virtual support ticket volume.
*/

SELECT
    contact_date,
    COUNT(incident_number) AS daily_incident_count
FROM incidents
GROUP BY contact_date
ORDER BY contact_date;

