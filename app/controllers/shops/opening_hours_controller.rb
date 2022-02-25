class Shops::OpeningHoursController < ApplicationController
  include ShopScoped

  def index
    @working_days = WorkingDay.all.rotate(Date.current.cwday)
    @working_days.each do |working_day|
      working_day.opening_hours = @shop.opening_hours.filter do |opening_hour|
        opening_hour.working_day == working_day
      end
    end
  end
end
