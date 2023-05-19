-- List shows and genres
SELECT `title`, `name`
	FROM `tv_shows`
--	LEFT JOIN ``tv_genres`
--	ON `id` = `show_id`
	LEFT JOIN `tv_genres`
	ON tv_shows.`id` = tv_genres.`id`
	ORDER BY `title`, `name`;
