class RecipesController < ApplicationController
    
    def index 
        @recipes = Recipe.all
    end 

    def show 
        @recipe = Recipe.find(params[:id])
    end 

    def new 
        @recipe = Recipe.new
    end 

    def create 
        recipe = Recipe.create(recipe_params(params[:name, :user_id]))
        redirect_to recipe_path(recipe)
    end 

    private

    def recipe_params(*args)
        params.require(:recipe).permit(*args)
    end 

end
