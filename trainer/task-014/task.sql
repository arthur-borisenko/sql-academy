SELECT town_to
FROM passenger p
	JOIN Pass_in_trip ON p.id = Pass_in_trip.passenger
	JOIN Trip on Pass_in_trip.trip = Trip.id
WHERE name = "Bruce Willis"