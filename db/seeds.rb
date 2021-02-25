# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all


lemon = Ingredient.create!(name: "lemon")
ice = Ingredient.create!(name: "ice")
mint = Ingredient.create!(name: "mint leaves")



misco =Cocktail.create!(name:"Mister Cocktail")

Dose.create!(description:"2cl", cocktail_id: misco.id, ingredient_id: mint.id)
Dose.create!(description:"2cube", cocktail_id: misco.id, ingredient_id: ice.id)
