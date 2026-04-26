{{
	config (
		alias = 'vw_employeesCalculate'
	)
}}

with employees  as (	
	select 
	DATEPART(year,getdate()) - DATEPART(year,BirthDate) as Age,
	DATEPART(YEAR,GETDATE()) - DATEPART(YEAR,HireDate) as LengthServive,
	CONCAT(FirstName,' ',LastName) as Name,*
	from {{source('sources','employees')}} 
	)

select * from employees