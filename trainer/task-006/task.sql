SELECT DISTINCT Company.name
FROM Company
	JOIN trip ON Company.id = Trip.company
WHERE trip.plane = "Boeing"