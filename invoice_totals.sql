-- invoice_totals.sql:
-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT 
	i.InvoiceId,
	i.Total,
	c.FirstName + ' ' + c.LastName
	AS CustFullName,
	c.Country,
	e.FirstName + ' ' + e.LastName
	AS EmpFullName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
ORDER BY i.InvoiceDate DESC
;