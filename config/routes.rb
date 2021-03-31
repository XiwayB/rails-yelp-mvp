Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "restaurants#index"
resources :restaurants, only: [ :index, :new, :create, :show] do
    resources :reviews, only: [ :create ]
  end
end
  # RESTAURANTS
  # See all restaurants // Index
  # Create a new restaurant // New + Create
  # See a restaurant // Show

  # REVIEWS
  # Create a new review // New + Create
  # See reviews in restaurant
