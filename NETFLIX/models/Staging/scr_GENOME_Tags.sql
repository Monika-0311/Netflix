
With RAW_GENOME_TAGS 
as 
(
Select * from {{ source('NETFLIX','s_GENOME_TAGS') }}
)
Select 
TAGID,
TAG
From RAW_GENOME_TAGS