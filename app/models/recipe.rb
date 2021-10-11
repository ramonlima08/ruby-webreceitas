class Recipe < ApplicationRecord
    validates :name, :stuff, :duration, :prepare_mode, presence:true
    validates_length_of :stuff, maximum: 200
    validates_length_of :prepare_mode, maximum: 200
    validates_numericality_of :calories, greather_than_or_equals_to:0, presence:true
    #validates_format_of :poster, with: /\w+\.(gif|jpg|png)\z/i, message: " utilizar somente arquivos GIF, JPEG ou PNG"
    
    KIND = %w(Carnes Aves Peixes Massas Saladas Doces)
    validates_inclusion_of :kind, in:KIND

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
