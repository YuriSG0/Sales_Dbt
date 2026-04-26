{{
    config(
        alias = 'vw_detailProduct'
    )
}}

with prod as (
	select c.CategoryName,s.CompanyName suppliers,p.ProductName,p.UnitPrice,p.ProductID 
	from {{source('sources','products')}} p
	left join {{source('sources','suppliers')}} s on s.SupplierID = p.SupplierID
	left join {{source('sources','categories')}} c on c.CategoryID = p.CategoryID
),
orderdetai as (
	select p.*,od.orderid,od.Quantity,od.discount
	from {{ref('order_detail')}} od
	left join  prod p on p.productid = od.productid
)
select * from orderdetai