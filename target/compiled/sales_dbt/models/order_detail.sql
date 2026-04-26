

select  od.OrderID,od.ProductID,od.UnitPrice,p.ProductName,p.SupplierID,p.CategoryID,od.Quantity,
od.Quantity * od.UnitPrice Total,
(p.UnitPrice * od.Quantity) - (od.Quantity * od.UnitPrice) as discount
from "Sales"."dbt"."oder_details" od 
left join "Sales"."dbt"."products" p
on p.ProductID = od.ProductID