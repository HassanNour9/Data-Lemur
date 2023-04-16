WITH final_rank as(
SELECT Ar_id,fin_rank,dense_rank() OVER( ORDER BY fin_rank DESC ) as rn
FROM(
SELECT Ar_id,SUM(song_rank) as fin_rank
FROM(
SELECT so.artist_id as Ar_id,COUNT(gl.rank) as song_rank FROM global_song_rank gl
join songs so ON gl.song_id=so.song_id
WHERE gl.rank <=10
GROUP BY so.artist_id) as top_rank
GROUP BY Ar_id
ORDER BY SUM(song_rank) DESC
) as ranking)

select artist_name,rn as artist_rank from artists a JOIN final_rank f
ON a.artist_id=f.Ar_id
WHERE rn<=5
ORDER BY artist_rank ASC,artist_name ASC;