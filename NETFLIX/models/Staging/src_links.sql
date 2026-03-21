With RawLinks 
as 
(
Select * from NETFILX_DB.NETFILX_SCH.RAW_LINKS)
Select 
MOVIEID,
IMDBID,
TMDBID
From RawLinks