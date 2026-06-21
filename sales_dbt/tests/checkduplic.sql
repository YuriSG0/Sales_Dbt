select count(*) count,
companyname,contactname from 
{{ref('customer')}}
group by companyname,contactname
having count(*) > 1