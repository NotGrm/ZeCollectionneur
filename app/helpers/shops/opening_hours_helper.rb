module Shops::OpeningHoursHelper
  def opening_hour_to_human(opening_hour)
    [
      l(opening_hour.opening, format: '%H:%M'),
      l(opening_hour.closing, format: '%H:%M')
    ].join('-')
  end
end
