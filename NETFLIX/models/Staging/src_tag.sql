
With Raw_Tags 
as 
(
Select * from {{ source('NETFLIX','s_TAGS')}})
Select 
USERID,
MOVIEID,
TAG,
timestamp
From Raw_Tags