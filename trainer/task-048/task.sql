SELECT Class.name,
	COUNT(*) AS COUNT
FROM Student_in_class
	JOIN Class ON Class.id = Student_in_class.class
GROUP BY Class.id
ORDER BY COUNT(*) DESC