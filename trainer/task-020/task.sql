SELECT STATUS,
	member_name,
	SUM(amount * unit_price) AS costs
FROM Payments
	JOIN goods ON good = good_id
	JOIN GoodTypes ON good_type_id = TYPE
	JOIN FamilyMembers ON family_member = member_id
WHERE good_type_name = "entertainment"
GROUP BY member_id