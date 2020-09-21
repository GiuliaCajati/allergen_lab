# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
User.destroy_all
Recipe.destroy_all
Allergy.destroy_all
RecipeIngredient.destroy_all

water = Ingredient.create(name: "water")
salt = Ingredient.create(name: "salt")
cabbage = Ingredient.create(name: "cabbage")
pepper = Ingredient.create(name: "pepper")
pork = Ingredient.create(name: "pork")
carrot = Ingredient.create(name: "carrot")
beans = Ingredient.create(name: "baked beans")

anney = User.create(name: "Anney")
mark = User.create(name: "Mark")
bob = User.create(name: "Bob")

kimchi = Recipe.create(name: "Kimchi", user: anney)
kimchi.ingredients << salt
kimchi.ingredients << cabbage
kimchi.ingredients << pepper

kimchi_soup = Recipe.create(name: "Budae Jjigae", user: mark)
kimchi_soup.ingredients << salt
kimchi_soup.ingredients << water
kimchi_soup.ingredients << cabbage
kimchi_soup.ingredients << pepper
kimchi_soup.ingredients << pork
kimchi_soup.ingredients << beans

cabbage_soup = Recipe.create(name: "Soupe aux choux", user: bob)
cabbage_soup.ingredients << water
cabbage_soup.ingredients << salt
cabbage_soup.ingredients << cabbage
cabbage_soup.ingredients << pork
cabbage_soup.ingredients << carrot

Allergy.create(user: bob, ingredient: beans)
Allergy.create(user: bob, ingredient: pepper)
Allergy.create(user: mark, ingredient: carrot)
Allergy.create(user: anney, ingredient: carrot)
Allergy.create(user: anney, ingredient: water)
