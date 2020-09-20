class User < ApplicationRecord
    has_many :allergies 
    has_many :ingredients, through: :allergies 
    has_many :recipes

    def destroy_recipes 
        self.recipes.each do |recipe|
            recipe.destroy 
        end 
    end 
end
