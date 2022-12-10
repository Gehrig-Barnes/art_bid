Rails.application.routes.draw do
  resources :reviews
  resources :rents
  resources :arts
  resources :artists
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #routes for user login/signup
  post "/signup", to: "users#create_user"
  get "/user", to: "users#get_user"

  post "/user_login", to: "sessions#user_login"
  delete "/user_logout", to: "sessions#user_logout"

  #routes for Artist Login/signup
  post "/artist_signup", to: "artists#create_user"
  get "/artist", to: "artists#get_artist"

  post "/artist_login", to: "sessions#artist_login"
  delete "/user_logout", to: "sessions#user_logout"

  get "*path", to: "fallback#index", constraints: ->(req) {!req.xhr? && req.format.html?}
end
