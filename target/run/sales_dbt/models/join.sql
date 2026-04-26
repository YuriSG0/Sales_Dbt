USE [Sales];
    
    

    

    
    USE [Sales];
    EXEC('
        create view "dbt"."vw_detailProduct__dbt_tmp" as 

with prod as (
	select c.CategoryName,s.CompanyName suppliers,p.ProductName,p.UnitPrice,p.ProductID 
	from "Sales"."dbt"."products" p
	left join "Sales"."dbt"."suppliers" s on s.SupplierID = p.SupplierID
	left join "Sales"."dbt"."categories" c on c.CategoryID = p.CategoryID
),
orderdetai as (
	select p.*,od.orderid,od.Quantity,od.discount
	from "Sales"."dbt"."vw_calculateOrderProduct" od
	left join  prod p on p.productid = od.productid
)
select * from orderdetai;
    ')

