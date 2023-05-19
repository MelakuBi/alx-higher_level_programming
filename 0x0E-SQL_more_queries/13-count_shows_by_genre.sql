-- Number of shows by genre
SELECT g.`name` AS "genre", COUNT(*) AS 'number_of_shows'
	FROM `tv_genres` AS g
	INNER JOIN `tv_show_genres` AS tsg
	ON g.`id` = tsg.`genre_id`
	GROUP BY g.`name`
	ORDER BY `number_of_shows` DESC;
