With dimMovies 
as
(
Select * from {{ ref('src_movies') }}
)
Select 
MOVIE_ID,
Upper(TITLE) as Title,
Split(GENRES, '|') as genres_array,
GENRES
From dimMovies
