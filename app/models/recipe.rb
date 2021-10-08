class Recipe < ApplicationRecord

    def light?
        calories < 130
    end
end
