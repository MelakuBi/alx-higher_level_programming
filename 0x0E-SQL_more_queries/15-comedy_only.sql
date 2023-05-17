-- Only Comedy
SELECT `title`
	FROM `tv_shows`
	INNER JOIN `tv_show_genres`
	ON `id` = `show_id`
	INNER JOIN `tv_genres`
	ON `id` = `genre_id`
	WHERE `name` = "Comedy"
	ORDER BY `title`;
