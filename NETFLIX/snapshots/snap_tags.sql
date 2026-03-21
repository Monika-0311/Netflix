{% snapshot snap_tags %}

{{
    config(
        target_schema='snapshots',
        unique_key=['user_id','movie_id','tag'],
        strategy='timestamp',
        updated_at='timestamp',
        invalidate_hard_deletes=true 
    )
}}
Select 
{{ dbt_utils.generate_surrogate_key(['user_id','movie_id','tag']) }} As row_key,
user_id,
movie_id,
tag,
Cast(timestamp as TIMESTAMP_NTZ) As timestamp
From {{ ref('src_tag') }}

{% endsnapshot %}