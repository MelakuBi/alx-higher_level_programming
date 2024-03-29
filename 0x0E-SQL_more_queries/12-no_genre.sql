-- No genre
SELECT `title`, `genre_id`
	FROM `tv_shows` AS ts
	LEFT JOIN `tv_show_genres` AS tsg
	ON ts.`id` = tsg.`show_id`
	WHERE tsg.`genre_id` IS NULL
	ORDER BY ts.`title`, tsg.`genre_id`;
