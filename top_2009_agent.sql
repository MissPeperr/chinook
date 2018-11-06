-- top_2009_agent.sql:
-- Which sales agent made the most in sales in 2009?

select 
    e.FirstName + ' ' + e.LastName AS FullName,
    sum(i.Total) PROFIT
from Employee e
join Customer c on e.EmployeeId = c.SupportRepId
join Invoice i on i.CustomerId = c.CustomerId
where i.InvoiceDate like '%2009%'
group by FullName
order by PROFIT DESC
LIMIT 1
;