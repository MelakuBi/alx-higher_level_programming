--Cities by States
SELECT `cities.id`, `cities.name`, `states.name` 
	FROM cities c states s
	ON c.id = s.id
	ORDER BY c.id;
