# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Restaurant 1", address: "val fleuri", phone_number: "061234", category: "chinese" },
  { name: "Restaurant 2", address: "route fané", phone_number: "064566", category: "italian" },
  { name: "Restaurant 3", address: "rue moche", phone_number: "071234", category: "japanese" },
  { name: "Restaurant 4", address: "dans la mer", phone_number: "072568", category: "french" },
  { name: "Restaurant 5", address: "sous l'ocean", phone_number: "118-218", category: "belgian" }
]

restaurants.each do |restaurant_attrs|
  Restaurant.create!(restaurant_attrs)
  puts "Created #{restaurant_attrs[:name]}"
end

puts "Finished!"
