{{
    config(
        materialized='view'
    )
}}

with youtube_channels_data as 
(
  select *
  from {{ source('staging','tbl_external_youtube_channels') }}
)
select
    channel_id,
    channel_link,
    channel_name,
    subscriber_count,
    banner_link,
    description,
    keywords,
    avatar,
    country,
    cast(total_views as numeric) as total_views,
    cast(total_videos as numeric) as total_videos,
    cast(join_date as timestamp) as join_date,
    cast(mean_views_last_30_videos as numeric) as mean_views_last_30_videos,
    cast(median_views_last_30_videos as numeric) as median_views_last_30_videos,
    cast(std_views_last_30_videos as numeric) as std_views_last_30_videos,
    cast(videos_per_week as numeric) as videos_per_week
from youtube_channels_data