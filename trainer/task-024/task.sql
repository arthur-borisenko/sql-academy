SELECT member_name,
	SUM(amount * unit_price) AS costs
FROM FamilyMembers
	JOIN Payments ON member_id = family_member
WHERE Payments.date >= "2005-06-01 00:00:00"
	AND Payments.date < "2005-07-01"
GROUP BY member_id