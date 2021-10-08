class RecipesController < ApplicationController

    def index
        @variavel = 'teste'
        @recipes = ['Strogonofe','Filé de Frango a milanesa','Salmão ao forno', 'Bacalhau ao Forno']
    end
end
