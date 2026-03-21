With fct_genome_scores 
as
(
Select * from {{ ref('src_GENOME_SCORES') }}
)
Select 
MOVIEID,
TAGID,
Round(RELEVANCE, 4) as RELEVANCE_SCORE
From fct_genome_scores
Where RELEVANCE > 0