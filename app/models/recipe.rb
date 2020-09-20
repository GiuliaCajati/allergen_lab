class Recipe < ApplicationRecord
    has_many :recipeingredients
    has_many :ingredients, through: :recipeingredients
    belongs_to :user 
end
