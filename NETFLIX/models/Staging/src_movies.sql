With MovieRaw 
as 
(
Select * from NETFILX_DB.NETFILX_SCH.MOVIE_RAW
)
Select 
MOVIE_ID,
TITLE,
GENRES
From MovieRaw 
