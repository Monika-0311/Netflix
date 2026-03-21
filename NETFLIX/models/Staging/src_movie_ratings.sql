
With MOVIE_RATINGS 
as 
(
Select * from {{ source('NETFLIX','s_MOVIE_RATINGS')}})
Select 
USER_ID,
MOVIE_ID,
RATING,
CASE
    WHEN LENGTH(TO_VARCHAR(timestamp)) = 8
         THEN TO_DATE(TO_VARCHAR(timestamp), 'YYYYMMDD')
    ELSE TO_TIMESTAMP(timestamp)
END as timestamp
From MOVIE_RATINGS 