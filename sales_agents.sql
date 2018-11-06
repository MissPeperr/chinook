-- sales_agents.sql:
-- Provide a query showing only the Employees who are Sales Agents.

SELECT 
	e.EmployeeId,
	e.Title,
	e.FirstName,
	e.LastName
FROM Employee e
WHERE e.Title = 'Sales Support Agent'
;