{{
    config (
        alias = 'vw_ShipperswithEmail'
    )
}}

select * from {{source('sources','shippers')}} sh
left join {{ref('shippers_emails')}} se
on sh.ShipperId = se.shipper_id 

