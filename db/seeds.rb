# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


1000.times do
  x = (1..365).to_a.sample
  y = (1..30).to_a.sample

  Booking.create!(
    house_name: Faker::Artist.name,
    start_date: Date.today + x.days,
    end_date: Date.today + x.days + y.days
  )
end
