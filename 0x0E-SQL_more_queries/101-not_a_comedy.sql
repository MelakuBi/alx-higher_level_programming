-- No Comedy tonight!
SELECT DISTINCT `title`
FROM `tv_shows`
	 LEFT JOIN `tv_show_genres`
	ON `show_id` = `id`
	LEFT JOIN `tv_genres`
	ON `id` = `genre_id`
	WHERE `title` NOT IN (SELECT `title` FROM `tv_shows`
		ON `show_id` = `id`
		INNER JOIN `tv_genres`
		ON `id` = `genre_id`
		WHERE `name` = "Comedy")
	ORDER BY `title`;
