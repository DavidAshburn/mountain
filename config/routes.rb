Rails.application.routes.draw do
  resources :artists
  resources :poets
  
  root 'home#index'
  get 'home/fonts'
  get 'home/poetry'
  get 'home/art'
  get 'home/issues'
  get 'home/about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
