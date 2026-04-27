With RAW_MOVIES 
as 
(
Select * from {{ source('NETFLIX','s_MOVIE')}}

)
Select 
MOVIE_ID,
TITLE,
GENRES
From RAW_MOVIES 

