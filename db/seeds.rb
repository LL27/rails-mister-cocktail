# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all


file = URI.open('https://assets.afcdn.com/recipe/20180801/81649_w648h344c1cx1766cy2888.jpg')
ramos = Cocktail.create!(name: "Crystal Ramos Gin Fizz")

ramos.photo.attach(io: file, filename: 'ramos.jpg', content_type: 'image/jpg')

a = Ingredient.create(name: "Tanqueray gin")
b = Ingredient.create(name: "Clarified gin milk punch")
c = Ingredient.create(name: "Orange blossom bubbles")


Dose.create(
  description: "1 1/4 cup",
  ingredient_id: a.id,
  cocktail_id: ramos.id
)

Dose.create(
  description: "6 3/4 cup",
   ingredient_id: b.id,
  cocktail_id: ramos.id
)

Dose.create(
  description: "Garnish",
   ingredient_id: c.id,
  cocktail_id: ramos.id
)
