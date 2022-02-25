class Shops::OpeningHoursController < ApplicationController
  include ShopScoped

  def index
    @opening_hours = @shop.opening_hours
    @grouped_opening_hours = @opening_hours.group_by(&:day)
    @rotated_days = Date::DAYNAMES.map(&:downcase).rotate(Date.current.cwday)
  end
end
