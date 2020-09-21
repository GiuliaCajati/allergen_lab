class RecipesController < ApplicationController
    
    def index 
        if params[:sorted] == "true"
            @recipe_type = "Sorted"
            @recipes = Recipe.sorted_by_ingredients 
        else 
            @recipes = Recipe.all
        #sort? if yes do below 
        end 
        render(:index)
    end 

    def show 
        @recipe = Recipe.find(params[:id])
    end 

    def new 
        @recipe = Recipe.new
    end 

    def create 
        recipe = Recipe.create(name: recipe_params(:name))
        user = User.find_or_create_by(name: recipe_params(:user))
        recipe.update(user: user)
        redirect_to recipe_path(recipe)
    end 

    private

    def recipe_params(*args)
        params.require(:recipe).permit(*args)
    end 

end
