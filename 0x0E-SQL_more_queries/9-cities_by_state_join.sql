-- Cities by States
-- SELECT c.`id`, c.`name`, s.`name` 
--	FROM cities AS c 
--	INNER JOIN states AS s
--	ON c.state_id = s.id
--	ORDER BY c.id;

SELECT cities.id, cities.name, states.name FROM cities
JOIN states ON cities.state_id=states.id
ORDER BY cities.id;
