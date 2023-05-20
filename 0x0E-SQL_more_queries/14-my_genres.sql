-- My genres
SELECT g.`name`
	FROM `tv_genres` AS g
	JOIN tv_show_genres 
	ON g.id=tv_show_genres.genre_id
	JOIN tv_shows AS s
       	ON s.id=tv_show_genres.show_id
	WHERE s.`title` = "Dexter"
	ORDER BY g.`name`;
