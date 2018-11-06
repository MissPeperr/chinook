-- total_sales_{year}.sql:
-- What are the respective total sales for each of those years?

SELECT SUM(Total) AS TotalSales
FROM Invoice
WHERE (DATEPART(yy, InvoiceDate) = 2009
OR DATEPART(yy, InvoiceDate) = 2011)
;