-- List shows and genres
SELECT `title`, `name`
	FROM `tv_shows`
	LEFT JOIN ``tv_genres`
	ON `id` = `show_id`
	LEFT JOIN `tv_genres`
	ON `genre_id` = `id`
	ORDER BY `title`, `name`;
