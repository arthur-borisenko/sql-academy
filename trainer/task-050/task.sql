SELECT FLOOR(
		COUNT(*) /(
			SELECT COUNT(*)
			FROM Student
		) * 100
	) AS percent
FROM Student
WHERE YEAR(birthday) = 2000