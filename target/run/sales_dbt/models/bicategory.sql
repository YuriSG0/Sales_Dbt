USE [Sales];
    
    

    

    
    USE [Sales];
    EXEC('
        create view "dbt"."vw_TesteJoin__dbt_tmp" as 

select 
    categoryname, suppliers, productname, productid
 from "Sales"."dbt"."vw_detailProduct"
where categoryname = ''Seafood'';
    ')

