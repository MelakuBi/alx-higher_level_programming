-- Only Comedy
SELECT s.title
	FROM tv_shows AS s
	JOIN tv_show_genres AS tsg
	ON s.id=tsg.show_id
	JOIN tv_genres AS g
	ON g.id=tsg.genre_id
	WHERE g.name = "Comedy"
	ORDER BY s.title;
