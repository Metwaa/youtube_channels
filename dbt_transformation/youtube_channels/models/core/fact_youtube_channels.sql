{{
    config(
        materialized='table'
    )
}}

with tbl_external_youtube_channels as (
    select * from {{ ref('stg_tbl_external_youtube_channels') }}
)
select * from tbl_external_youtube_channels