Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "auctions#index"


  resources :users, only: [:new, :create]

  resource :sessions, only: [:new, :destroy, :create]

  resources :auctions do 
    resources :bids, only: [:create, :destroy]
  end

  
end
