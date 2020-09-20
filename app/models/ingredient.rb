class Ingredient < ApplicationRecord
    has_many :recipes, through: :recipeingredients
    has_many :recipeingredients
    has_many :allergies
    has_many :users, through: :allergies 

    def self.sorted_by_allergies
        self.all.sort_by do |ingredient|
            ingredient.allergies.size 
        end 
    end 
        #self.all.sort_by(ingredient.user.size) ?


    
end
