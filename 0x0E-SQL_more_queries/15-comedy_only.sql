-- Only Comedy
SELECT `title`
	FROM `tv_shows`
	INNER JOIN `tv_genres`
	ON tv_shows.`id` = tv_genres.`id`
	WHERE tv_genres.`name` = "Comedy"
	ORDER BY tv_shows.`title`;
