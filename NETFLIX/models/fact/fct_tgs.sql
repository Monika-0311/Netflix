{{ config(materialized='table') }}

With tag_SCD2 AS
(
Select * from {{ ref('snap_tags') }}
)
Select 
Row_key,
user_id,
movie_id,
tag,
timestamp,
DBT_UPDATED_AT,
DBT_VALID_FROM,
DBT_VALID_TO
From tag_SCD2