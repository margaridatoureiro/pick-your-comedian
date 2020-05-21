# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all humourless nutjobs'
Comedian.destroy_all

10.times do
  Comedian.create(name: Faker::FunnyName.name, age: rand(18..79), content: Faker::Movies::HarryPotter.quote)
end

puts 'Shamelessly invoking some memorable jokers who are NOT prone to murder, thank you very much'
