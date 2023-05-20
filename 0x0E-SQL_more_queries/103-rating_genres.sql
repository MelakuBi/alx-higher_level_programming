-- Best genre
SELECT `name`, SUM(`rate`) AS 'rating'
FROM `tv_genres`
INNER JOIN `tv_show_genres`
ON `genre_id` = `id`
INNER JOIN `tv_show_ratings`
ON `tv_show_genres`.`show_id` = `tv_show_ratings`.`show_id`
GROUP BY `name`
ORDER BY `rating` DESC;
