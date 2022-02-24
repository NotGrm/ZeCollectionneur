DELETE FROM bookings
WHERE id NOT in(
    SELECT
      b2.id FROM bookings b1
    CROSS JOIN LATERAL (
      SELECT
        id, upper(daterange(bookings.start_date, bookings.end_date)) - LOWER(daterange(bookings.start_date, bookings.end_date)) AS days FROM bookings
      WHERE
        daterange(b1.start_date, b1.end_date) && daterange(bookings.start_date, bookings.end_date)
      ORDER BY
        days DESC
      LIMIT 1) AS b2);
