-- No Comedy tonight!
SELECT DISTINCT s.title
	FROM tv_shows AS s
	WHERE s.title NOT IN(
	SELECT s.title
	FROM tv_shows AS s
	JOIN tv_show_genres AS tsg
	ON tsg.show_id=s.id
	JOIN tv_genres AS g
	ON g.id=tsg.genre_id
	WHERE g.name = "Comedy")
	ORDER BY s.title;
