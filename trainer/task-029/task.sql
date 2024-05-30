SELECT name
FROM (
		SELECT DISTINCT Passenger.id,
			Passenger.name
		FROM Trip
			JOIN Pass_in_trip ON Pass_in_trip.trip = Trip.id
			JOIN Passenger ON Passenger.id = Pass_in_trip.passenger
		WHERE plane = "TU-134"
			AND town_to = "Moscow"
	) as Passengers_tu154_to_moscow