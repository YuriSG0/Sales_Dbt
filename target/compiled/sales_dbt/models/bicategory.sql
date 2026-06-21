

select 
    categoryname, suppliers, productname, productid
 from "Sales"."dbt"."vw_detailProduct"
where categoryname = 'Seafood'