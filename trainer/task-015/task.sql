SELECT time_in
from Passenger
	join Pass_in_trip on Passenger.id = Pass_in_trip.passenger
	join Trip on Pass_in_trip.trip = Trip.id
WHERE Passenger.name = "Steve Martin"
	and town_to = "London"