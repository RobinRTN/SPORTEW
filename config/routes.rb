Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  get '/compte', to: 'pages#index'

  resources :fields
  resources :clubs, only: %i[ index show edit update ]

  resources :conversations, only: %i[ create ] do
    resources :messages, only: %i[ new create edit update ]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
