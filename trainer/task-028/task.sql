SELECT COUNT(*) AS count
FROM trip
GROUP BY town_from,
	town_to
HAVING town_from = "Rostov"
	AND town_to = "Moscow"