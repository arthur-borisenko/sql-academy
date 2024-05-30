WITH cnt_table AS (
	SELECT classroom,
		COUNT(*) as cnt
	FROM Schedule
	GROUP BY classroom
)
SELECT classroom
FROM cnt_table
WHERE cnt = (
		SELECT max(cnt)
		FROM cnt_table
	)