
With Raw_Tags 
as 
(
Select * from {{ source('NETFLIX','s_TAGS')}})
Select 
USER_ID,
MOVIE_ID,
TAG,
timestamp
From Raw_Tags