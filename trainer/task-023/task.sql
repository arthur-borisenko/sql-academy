WITH Delicacies AS (
	SELECT DISTINCT good_id,
		good_name,
		unit_price
	FROM GoodTypes
		JOIN goods ON good_type_id = TYPE
		JOIN Payments ON good = good_id
	WHERE good_type_name = "delicacies"
)
SELECT d.good_name,
	d.unit_price
FROM Delicacies d
WHERE d.unit_price = (
		SELECT max(d2.unit_price)
		FROM Delicacies d2
	)