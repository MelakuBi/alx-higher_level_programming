-- Rotten tomatoes
SELECT title, SUM(rate) AS 'rating'
FROM tv_shows
JOIN `tv_show_ratings`
ON `id` = `show_id`
GROUP BY `title`
ORDER BY `rating` DESC;
