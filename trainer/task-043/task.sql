SELECT t.last_name
FROM Teacher AS t
	JOIN Schedule AS sch ON t.id = sch.teacher
	JOIN subject AS subj ON sch.subject = subj.id
WHERE subj.name = "Physical Culture"
ORDER BY last_name