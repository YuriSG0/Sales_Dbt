{{
    config (
        alias = 'vw_TesteJoin'
    )
}}

select {{retorna_campos()}} from {{ref('join')}}
where categoryname = '{{var('category')}}'