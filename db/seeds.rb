# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
  assembly = Assembly.create(name: Faker::Appliance.equipment)
end

10.times do |index|
  prtnbr = Faker::Appliance.equipment
  part = Part.create(part_number: "#{prtnbr}  #{index}")
end

10.times do
  aass = Assembly.find(rand(1..Assembly.last.id))
  ppart = Part.find(rand(1..Part.last.id))
  ppart.assemblies<<aass
end

