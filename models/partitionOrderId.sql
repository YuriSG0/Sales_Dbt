{{
    config (
        alias = 'vw_particionOrder'
    )
}}

select * from {{ref('join')}}
where orderid >= 1000