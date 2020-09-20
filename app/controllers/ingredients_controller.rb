class IngredientsController < ApplicationController

    def index 
        @ingredients = Ingredient.sorted_by_allergies 
    end 

    def show 
        @ingredient = Ingredient.find(params[:id])
    end 

end
