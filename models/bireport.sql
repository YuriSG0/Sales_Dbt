{{
    config(
        materialized = 'table',
        alias = 'Join')
}}

select * from {{ref('join')}}