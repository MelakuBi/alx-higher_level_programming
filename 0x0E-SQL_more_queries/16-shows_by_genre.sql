-- List shows and genres
SELECT s.title, g.name
	FROM tv_shows AS s
	LEFT JOIN tv_show_genres AS tsg
	ON s.id=tsg.show_id
	LEFT JOIN tv_genres AS g
	ON g.id=tsg.genre_id
	ORDER BY s.title, g.name;
