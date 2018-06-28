# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

Ingredient.delete_all

open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list") do |ingredients|
  data = []
  ingredients.read.each_line do |ingredient|
    item = JSON.parse(ingredient)
    a = item["drinks"]
        a.each do |h|
            object = {
                "name":  h["strIngredient1"]
            }
            data << object
        end
  end
  Ingredient.create!(data)
end

puts 'Finished!'


