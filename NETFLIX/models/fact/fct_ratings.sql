{{
    config(materialized = 'incremental', on_schema_change = 'sync_all_columns')
}}

With scr_rating as
(
    Select * from {{ ref('src_movie_ratings') }}
)
Select 
USER_ID,
MOVIE_ID,
RATING,
timestamp
From scr_rating
Where Rating IS NOT null 
{% if is_incremental() %}
    And timestamp > (Select Max(timestamp) From {{this}})
{% endif %}