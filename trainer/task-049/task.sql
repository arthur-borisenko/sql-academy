SELECT round(
		COUNT(*) /(
			SELECT COUNT(*)
			FROM Student_in_class
		) * 100,
		4
	) AS percent
FROM Student_in_class
	JOIN Class ON Class.id = Student_in_class.class
WHERE Class.name = "10 A"