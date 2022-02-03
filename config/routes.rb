Rails.application.routes.draw do

  # get '/articles', to 'articles#index'
  # creates routes for all crud actions
  resources :articles, only: %i[index show]

end
