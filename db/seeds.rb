# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create categories
Category.create!(name: "Rich Froning", description: "All these wods come from the SugarWod paid app from Rich Froning")
Category.create!(name: "Custom", description: "These are wods that we create out of other sources like instagram, twitter, browsing the web, etc.")
cat = Category.create!(name: "Benchmark", description: "	All these wods are pre-defined crossfit wods")

puts "Created 3 initial categories"

wod = Wod.create!(title: "Annie", description: "50-40-30-20-10</br>Double-Unders</br>Sit-Ups</br>Beginner: 10-12 minutes</br>Intermediate: 8-10 minutes</br>Advanced: 7-8 minutes</br>Elite: <6 minutes</br>",
    notes: "Complete the work in the order listed: 50 Double-Unders, followed by 50 Sit-Ups. Then 40 Double-Unders, followed by 40 Sit-Ups. Then 30 of each. Then 20 of each. Then 10 of each.",
    category_id: cat.id
)

puts "Created 1 wod"

double_under = Movement.create!(name: "Double Under", url: "https://youtu.be/82jNjDS19lg")
sit_up = Movement.create!(name: "Sit Up", url: "https://youtu.be/_HPfXutjB1s")

wod.movements << double_under
wod.movements << sit_up

puts "Created 2 movements"