{{
    config(
        alias = 'vw_firstCustomer'
    )
}}

with markup  as (
	select *,FIRST_VALUE(customerID) over(partition by CompanyName,ContactName order by CompanyName
	rows between unbounded  preceding and unbounded following ) as result
	from {{source('sources','customers')}}),
result_remove_duplicate as (
	select distinct result from markup	
),
final as ( 
	select * from {{source('sources','customers')}} where customerid in (select result from result_remove_duplicate)
)
select * from final
