Rails.application.routes.draw do
  get "about", to: "about#index"
  get "pokemons/search", to: "pokemons#search"
  resources :pokemon, only: %i[index show] do
    #   collection do
    #     get "search"
    #   end
  end
  get 'about/show'
  get 'home/index'
  get 'home/show'
  resources :pokemons
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
