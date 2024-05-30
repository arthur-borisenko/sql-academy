SELECT COUNT(*) as count
FROM Student_in_class
	JOIN Class ON Student_in_class.class = Class.id
WHERE Class.name = "10 B"