{% snapshot snap_tags %}

{{
    config(
        target_schema='snapshots',
        unique_key=['userid','movieid','tag'],
        strategy='timestamp',
        updated_at='timestamp',
        invalidate_hard_deletes=true 
    )
}}
Select 
{{ dbt_utils.generate_surrogate_key(['userid','movieid','tag']) }} As row_key,
userid,
movieid,
tag,
Cast(timestamp as TIMESTAMP_NTZ) As timestamp
From {{ ref('src_tag') }}

{% endsnapshot %}