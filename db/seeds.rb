# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Category.destroy_all
Recipe.destroy_all
Bookmark.destroy_all

italian = Category.create(name: "Italian")
chinese = Category.create(name: "Chinese")
japanese = Category.create(name: "Japanese")
mexican = Category.create(name: "Mexican")

recipe1 = Recipe.create(
  name: "Spaghetti Carbonara",
  description: "A classic Roman pasta dish with eggs, cheese, pancetta, and pepper.",
  image_url: "https://example.com/carbonara.jpg",
  rating: 7.8
)

recipe2 = Recipe.create(
  name: "Kung Pao Chicken",
  description: "A spicy stir-fry dish made with chicken, peanuts, vegetables, and chili peppers.",
  image_url: "https://example.com/kungpao.jpg",
  rating: 8.2
)

recipe3 = Recipe.create(
  name: "Sushi",
  description: "A Japanese dish consisting of vinegared rice accompanied by a variety of ingredients, such as raw fish and vegetables.",
  image_url: "https://example.com/sushi.jpg",
  rating: 9.1
)

recipe4 = Recipe.create(
  name: "Tacos",
  description: "A traditional Mexican dish consisting of small hand-sized corn or wheat tortillas topped with a filling.",
  image_url: "https://example.com/tacos.jpg",
  rating: 8.0
)

Bookmark.create(recipe_id: recipe1.id, category_id: italian.id, comments: "Classic Italian pasta dish.")
Bookmark.create(recipe_id: recipe2.id, category_id: chinese.id, comments: "A spicy and flavorful dish from Sichuan cuisine.")
Bookmark.create(recipe_id: recipe3.id, category_id: japanese.id, comments: "Traditional Japanese sushi.")
Bookmark.create(recipe_id: recipe4.id, category_id: mexican.id, comments: "Delicious Mexican tacos.")
