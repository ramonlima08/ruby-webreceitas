class Recipe < ApplicationRecord

    def light?
        calories < 130
    end

    def self.created_at 
        where('created_at <= ?', Time.now).order('created_at DESC')
    end

    # formas de fazer consultas no bd
    # Recipe.all
    # Recipe.count
    # Recipe.order('nome_do_campo DESC')
    # Recipe.find(1)
    # Recipe.find_by(name: 'teste')
    # Recipe.where('campo <= ?', valor)
    # Recipe.where('created_at <= ?', Time.now).order('created_at DESC')

end
