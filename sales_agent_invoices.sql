-- sales_agent_invoices.sql:
-- Provide a query that shows the invoices associated with each sales agent.
-- The resultant table should include the Sales Agent's full name.

SELECT 
	i.InvoiceId, 
	e.FirstName 
	+ ' ' 
	+ e.LastName 
	AS 'FullName'
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
;