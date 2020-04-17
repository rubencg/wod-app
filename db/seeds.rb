# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create categories
Category.create!(name: "Rich Froning", description: "All these wods come from the SugarWod paid app from Rich Froning")
Category.create!(name: "Benchmark", description: "	All these wods are pre-defined crossfit wods")
Category.create!(name: "Custom", description: "These are wods that we create out of other sources like instagram, twitter, browsing the web, etc.")

puts "Created 3 initial categories"