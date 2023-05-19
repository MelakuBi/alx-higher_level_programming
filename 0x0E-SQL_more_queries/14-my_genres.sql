-- My genres
SELECT g.`name`
	FROM `tv_genres` AS g
--	ON g.'id' = s.'genre_id'
	INNER JOIN `tv_shows` AS s
	ON s.`id` = g.`id`
	WHERE s.`title` = "Dexter"
	ORDER BY g.`name`;
