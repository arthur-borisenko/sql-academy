SELECT DISTINCT good_name
FROM Goods
WHERE good_id NOT IN (
		SELECT good
		FROM Payments
		WHERE YEAR(Payments.date) = 2005
	)