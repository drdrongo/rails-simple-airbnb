# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clearing database...'
Flat.destroy_all
puts 'Database cleared.'

puts 'Creating new seeds...'
10.times do
  flat = Flat.new(
    name: "A very nice flat",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: "This is a very nice apartment and you would be soooo happy to live here!",
    price_per_night: rand(14..30) * 5,
    number_of_guests: rand(1..5)
  )
  flat.save
end
puts 'Seeds created. Have a nice day.'
