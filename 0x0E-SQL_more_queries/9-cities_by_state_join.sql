-- Cities by States
SELECT c.`id`, s.`name`, states.`name` 
	FROM cities AS c 
	INNER JOIN states AS s
	ON c.id = s.id
	ORDER BY c.id;
