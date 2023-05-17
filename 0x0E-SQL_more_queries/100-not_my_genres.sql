-- NOT MY GENRE
SELECT DISTNICT `name`
	FROM `tv_genres
	INNER JOIN `tv_show_genres`
	ON `id` = `genre_id`
	INNER JOIN `tv_show`
	ON `show_id` = `id`
	WHERE `name` NOT IN (
		SELECT `name` FROM `tv_genres`
		ON `id` = `genre_id`
		INNER JOIN `tv_shows`
		ON `show_id` = `id`
		WHERE `title` = "Dexter")
	ORDER BY `name`;
