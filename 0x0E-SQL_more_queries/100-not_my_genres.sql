-- NOT MY GENRE
SELECT DISTINCT `name`
	FROM `tv_genres`
	INNER JOIN `tv_shows`
	ON tv_shows.`id` = tv_genres.`id`
	WHERE tv_genres.`id` <> (
		SELECT tv_genres.`id` FROM `tv_genres`
		INNER JOIN `tv_shows`
		ON tv_shows.`id` = tv_genres.`id`
		WHERE tv_shows.`title` = "Dexter")
	ORDER BY tv_genres.`name`;
