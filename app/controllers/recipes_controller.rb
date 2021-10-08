class RecipesController < ApplicationController

    def index
        @variavel = 'teste'
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end
end
