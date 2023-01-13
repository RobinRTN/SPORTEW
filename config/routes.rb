Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/compte', to: 'pages#index'

  resources :terrains do
	  resources :messages, only: %i[ new create edit update ]
	end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
