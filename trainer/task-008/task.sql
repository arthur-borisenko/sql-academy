SELECT tt.town_to AS town_to,
	concat(tt.hours, ":", tt.min, ":", tt.sec) AS flight_time
FROM (
		SELECT t.town_to,
			t.flight_time,
			lpad(cast(t.flight_time % 60 AS char), 2, "0") AS sec,
			lpad(cast(t.flight_time DIV 60 % 60 AS char), 2, "0") AS min,
			lpad(
				cast(t.flight_time DIV 60 DIV 60 AS char),
				2,
				"0"
			) AS hours
		FROM (
				SELECT town_to,
					TIMESTAMPDIFF(SECOND, time_out, time_in) AS flight_time
				FROM trip
				WHERE town_from = "Paris"
			) AS t
	) AS tt