class Recipe < ApplicationRecord
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
    belongs_to :user 

    def self.sorted_by_ingredients 
        self.all.sort_by do |recipe|
            recipe.ingredients.size
        end.reverse 
    end 
end
