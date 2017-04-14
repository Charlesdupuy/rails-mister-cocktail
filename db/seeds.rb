# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cocktails = []
cocktails << Cocktail.create!({
    name: "Caipirinha"
  })

cocktails << Cocktail.create!({
    name: "JB on the beach"
  })

puts 'Finished!'

ingredients = []
ingredients << Ingredient.create!({
    name: "Lemon"
  })
ingredients << Ingredient.create!({
    name: "Sugar"
  })

puts 'Finished!'

lemon_id = ingredients.first.id
caipirinha_id = cocktails.first.id
Dose.create!({
  description: "cachaça",
  ingredient_id: lemon_id,
  cocktail_id: caipirinha_id
  })
puts 'Finished!'




