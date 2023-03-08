Rails.application.routes.draw do
  root 'home#index'
  get 'home/fonts'
  get 'home/poetry'
  get 'home/art'
  get 'home/issues'
  get 'home/submit'
  get 'home/support'
  get 'home/about'

  get 'artists/jzich'
  get 'artists/gjg'

  get 'poets/bgreen'
  get 'poets/ldelan'
  get 'poets/ewij'
  get 'poets/mbrooks'
  get 'poets/wrmoore'
  get 'poets/lbridges'
  get 'poets/dradavich'
  get 'poets/kljohnston'
  get 'poets/thbodine'

  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
