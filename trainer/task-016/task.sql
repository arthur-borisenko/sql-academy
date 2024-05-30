SELECT Passenger.name,
	COUNT(*) AS COUNT
FROM Passenger
	JOIN Pass_in_trip ON Passenger.id = Pass_in_trip.passenger
GROUP BY Pass_in_trip.passenger,
	passenger.name
ORDER BY COUNT(*) DESC,
	passenger.name