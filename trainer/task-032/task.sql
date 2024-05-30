SELECT floor(avg(TIMESTAMPDIFF(YEAR, birthday, NOW()))) AS age
FROM FamilyMembers