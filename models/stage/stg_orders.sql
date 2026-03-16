WITH source AS (
    SELECT * 
    FROM {{ source('src', 'orders') }}
),

changed AS (
    SELECT
        -- ids
        o_orderkey AS order_id,
        o_custkey AS customer_id,

        -- descriptions
        o_comment AS comment,
        o_clerk AS clerk_name,

        -- numbers
        o_totalprice AS total_price,

        -- statuses
        o_orderstatus AS status_code,
        o_orderpriority AS priority_code,
        o_shippriority AS ship_priority,

        -- dates
        o_orderdate AS order_date

    FROM source
)

SELECT *
FROM changed