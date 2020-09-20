class Recipe < ApplicationRecord
    has_many :ingredients, through: :recipeingredients
    has_many :recipeingredients
    belongs_to :user 
end
