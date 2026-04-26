USE [Sales];
    
    

    

    
    USE [Sales];
    EXEC('
        create view "dbt"."vw_particionOrder__dbt_tmp" as 

select * from "Sales"."dbt"."vw_detailProduct"
where orderid >= 1000;
    ')

