class ExerciseController < ApplicationController

    def index
        @name = "Ramon Lima"
        @rate = 5
        @message = "O usuário #{@name} votou (#{@rate} estrelas) para essa receita"

        #metodos em string
        @message2 = "O usuário #{@name.upcase} votou (#{@rate} estrelas) para essa receita"

        #arrays
        @frutas = ['morango','laranja','abacaxi','banana','maça']

        @inteiro = 123
        @stringInt = @inteiro.to_s
        @toInt = @stringInt.to_i

        @novoArray = (0..5).to_a

    end

    def hash

        @recipes = {name:'Salmão', calories:110}
        @recipes[:name]='Sopa' #alterando propriedade

        @valorDaFuncao = maior(5)

    end

    def maior(num)

        if num > 10
            'maior que 10'
        else
            'menor que 10'
        end

    end
end
