{{
    config(
        materialized='table'
    )
}}

with fact_youtube_channels_data as(
    select * from {{ref("stg_tbl_external_youtube_channels")}}
)
select * from fact_youtube_channels_data