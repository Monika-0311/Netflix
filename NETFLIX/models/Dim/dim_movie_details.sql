With Movie_Detail 
AS 
(
    Select * from {{ ref('src_movies') }}
),
rate as
(

    Select * from {{ ref('src_movie_ratings') }}
)
Select 
Movie_Detail.MOVIE_ID,
rate.USER_ID,
rate.rating,
rate.timestamp
from Movie_Detail
Join rate On Movie_Detail.MOVIE_ID = rate.MOVIE_ID

