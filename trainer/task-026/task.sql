SELECT good_type_name
FROM GoodTypes
WHERE good_type_id NOT IN (
		SELECT TYPE
		FROM Goods
		WHERE good_id IN (
				SELECT good
				FROM Payments
				WHERE YEAR(Payments.date) = 2005
			)
	)