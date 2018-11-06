-- total_invoices_{year}.sql:
-- How many Invoices were there in 2009 and 2011?

SELECT 
	i.InvoiceId,
	i.InvoiceDate
FROM Invoice i
WHERE (DATEPART(yy, InvoiceDate) = 2009
OR DATEPART(yy, InvoiceDate) = 2011)

;