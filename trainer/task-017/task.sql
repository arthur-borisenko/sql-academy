SELECT member_name,
	STATUS,
	SUM(amount * unit_price) AS costs
FROM FamilyMembers
	JOIN Payments ON member_id = family_member
WHERE YEAR(date) = 2005
GROUP BY member_id