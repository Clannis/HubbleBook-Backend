Rails.application.routes.draw do
  resources :comments, only: [:create]
  post '/login', to: 'sessions#login'
  post '/autologin', to: 'sessions#autologin'
  resources :users
  resources :articles do
    resources :comments, only: [:index]
  end

  get '/missions/:mission_name', to: 'articles#missions'
  post '/search', to: 'articles#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
