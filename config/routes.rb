Rails.application.routes.draw do
  require "resque/server"
  devise_for :users
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end
  root "artists#index"
  resources :paintings
  resources :galleries
  resources :artists
  mount Resque::Server.new, at: "/jobs"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
