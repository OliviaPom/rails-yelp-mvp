# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
atari_ya = { name: "Atari Ya", address: "Temple Fortune", category: "japanese"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
wagamama = { name: "Wagamama", address: "Hampstead High Street", category: "japanese"}
fen = { name: "Fen Noodles", address: "Spitalfields", category: "chinese"}
poule_aupot = { name: "La Poule Au Pot", address: "Chelsea", category: 'french'}

[ atari_ya, pizza_east, wagamama, fen, poule_aupot ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
