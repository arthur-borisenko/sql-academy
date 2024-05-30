SELECT trip,
	COUNT(*) AS COUNT
FROM Pass_in_trip
group by trip