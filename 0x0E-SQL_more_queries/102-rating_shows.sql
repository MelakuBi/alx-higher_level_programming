-- Rotten tomatoes
SELECT `title`, SUM(`rate`)
FROM `tv_shows`
INNER JOIN `tv_show_ratins`
ON `id` = `show_id`
GROUP BY `title`
ORDER BY `rating` DESC;
