class RecipesController < ApplicationController

    def index
        @variavel = 'teste'
        @recipes = Recipe.all
    end
end
