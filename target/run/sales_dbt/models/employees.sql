USE [Sales];
    
    

    

    
    USE [Sales];
    EXEC('
        create view "dbt"."vw_employeesCalculate__dbt_tmp" as 

with employees  as (	
	select 
	DATEPART(year,getdate()) - DATEPART(year,BirthDate) as Age,
	DATEPART(YEAR,GETDATE()) - DATEPART(YEAR,HireDate) as LengthServive,
	CONCAT(FirstName,'' '',LastName) as Name,*
	from "Sales"."dbt"."employees" 
	)

select * from employees;
    ')

