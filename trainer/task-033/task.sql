SELECT avg(unit_price) AS cost
FROM Payments
	JOIN Goods ON good_id = good
WHERE good_name = "red caviar"
	OR good_name = "black caviar"