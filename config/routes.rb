Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get "recipes" => "recipes#index"
  root 'recipes#index'
  resources :recipes

  get "exercise/str" => "exercise#index"
  get "exercise/hash" => "exercise#hash"

end

#commands 

#Migration (atenção, seguir as convenções, nome da migrate singular em ingles)
#rails g migration {Name} field field_text:text number:integer amount:decimal
#rails g migration AddNewFieldsTo{Name} bigtext:text field_two fields:integer

#Exec migratinos
#rake db:migrate

#Controller
#rails g controller {Name}