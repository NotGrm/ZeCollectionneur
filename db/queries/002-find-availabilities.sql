SELECT
  b1.house_name,
  b1.end_date,
  b2.start_date,
  upper(daterange(b1.end_date, b2.start_date)) - LOWER(daterange(b1.end_date, b2.start_date)) AS available_days
FROM
  bookings b1
  CROSS JOIN LATERAL (
    SELECT
      *
    FROM
      bookings
    WHERE
      house_name = b1.house_name
      AND start_date > b1.end_date) b2
WHERE
  upper(daterange(b1.end_date, b2.start_date)) - LOWER(daterange(b1.end_date, b2.start_date)) > 5;
