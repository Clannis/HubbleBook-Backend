Rails.application.routes.draw do
  resources :articles

  get '/missions/:mission_name', to: 'articles#missions'
  post '/articles/search', to: 'articles#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
