with 

source as (

    select * from {{ source('staging', 'tbl_external_youtube_channels') }}

),

renamed as (

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
        total_views,
        total_videos,
        join_date,
        mean_views_last_30_videos,
        median_views_last_30_videos,
        std_views_last_30_videos,
        videos_per_week

    from source

)

select * from renamed
