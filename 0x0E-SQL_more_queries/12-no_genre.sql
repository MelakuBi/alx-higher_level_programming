-- No genre
SELECT ts.`title`, tsg.`genre_id`
	FROM `tv_shows` AS ts
	LEFT JOIN `tv_show_genres` tsg
	ON ts.`id` = tsg.`show_id`
	WHERE tsg.`gener_id` IS NULL
	ORDER BY ts.`title`, tsg.`gener_id`;
