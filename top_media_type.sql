-- top_media_type.sql:
-- Provide a query that shows the most purchased Media Type.

SELECT TOP(1)
	mt.Name,
	SUM(il.Quantity) as PurchaseCount
FROM MediaType mt
JOIN Track t ON mt.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY mt.Name
ORDER BY PurchaseCount desc
;