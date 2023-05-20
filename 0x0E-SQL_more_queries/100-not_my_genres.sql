-- NOT MY GENRE
 SELECT DISTINCT tv_genres.`name`
	FROM `tv_genres`
	WHERE tv_genres.name NOT IN (
		SELECT tv_genres.name
	       	FROM `tv_genres`
		JOIN tv_show_genres AS tsg
		ON tsg.genre_id=tv_genres.id
		JOIN tv_shows
		ON tv_shows.id=tsg.show_id
		WHERE tv_shows.`title` = "Dexter")
	ORDER BY tv_genres.`name`;
