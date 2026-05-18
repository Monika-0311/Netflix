With RAW_MOVIES 
as 
(
Select MOVIE_ID,TITLE, {{ delimiter('GENRES')}} As GENRES 
from {{ source('NETFLIX','s_MOVIE')}}
)
Select 
MOVIE_ID,
TITLE,
GENRES
From RAW_MOVIES 

