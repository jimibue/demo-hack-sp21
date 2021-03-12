# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Brand.destroy_all
Beer.destroy_all
Hop.destroy_all

10.times do 
   brand = Brand.create(name:Faker::Beer.brand)

   10.times do
      brand.beers.create(name:Faker::Beer.name, style:Faker::Beer.style)
   end

   Hop.create(name:Faker::Beer.hop)   
end

puts "Brand size #{Brand.all.size}"
puts "Beer size #{Beer.all.size}"
puts "Hop size #{Hop.all.size}"