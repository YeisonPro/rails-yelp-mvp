Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/create'
  get 'restaurants/new'
  get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # list all restaurants
  root to: 'restaurants#index' # este es para mostrar la lista de todos los restaurants, es la principal page

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create] # ponemos esto dentro del bloque porque queremos seguir usando la ruta 'padre'
  end
end

# Defines the root path route ("/")
# root "articles#index"
