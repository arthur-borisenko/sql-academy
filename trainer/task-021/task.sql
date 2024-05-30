SELECT good_name
FROM Goods
	JOIN Payments ON good = good_id
GROUP BY good_id
HAVING COUNT(*) > 1