SELECT DISTINCT name
FROM Class
	JOIN Schedule ON Class.id = Schedule.class
	JOIN Teacher ON Teacher.id = Schedule.teacher
WHERE Teacher.last_name = "Krauze"