SELECT GoodTypes.good_type_name,
	sum(amount * unit_price) AS costs
FROM (
		SELECT *
		FROM Goods
			JOIN Payments ON Goods.good_id = Payments.good
		WHERE YEAR(Payments.date) = 2005
	) AS goods_with_payments_in_2005
	JOIN GoodTypes ON good_type_id = TYPE
GROUP BY GoodTypes.good_type_id
HAVING SUM(amount * unit_price) > 0