-- top_2013_track.sql:
-- Provide a query that shows the most purchased track of 2013.

SELECT 
	t.Name,
	i.InvoiceDate,
	SUM(il.Quantity) AS PurchaseCount
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId
JOIN Invoice i on i.InvoiceId = il.InvoiceId
WHERE DATEPART(yy, i.InvoiceDate) = 2013
GROUP BY t.Name, i.InvoiceDate
ORDER BY PurchaseCount desc
;