SELECT COUNT(*) AS COUNT
FROM Schedule
	JOIN Teacher ON Teacher.id = Schedule.teacher
WHERE Teacher.last_name = "Krauze"
	AND Schedule.date = "2019-08-30"