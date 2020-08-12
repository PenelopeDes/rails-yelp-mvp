# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
mamma = { name: "Mamma", address: "rue Oberkampf", phone_number:"0145938204", category:"italian" }
juliette = { name: "Juliette", address: "rue Oberkampf", phone_number:"0145938205", category:"french" }
tokyo = { name: "Tokyo", address: "rue Saint-Maur", phone_number:"0145938206", category:"japanese" }
frites = { name: "Bonnes Frites", address: "villa Gaudelet", phone_number:"0148528204", category:"belgian" }
sushi = { name: "Sushi", address: "rue Crespin du Gast", phone_number:"0145957604", category:"chinese" }

restaurants = [mamma, juliette, tokyo, frites, sushi]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

