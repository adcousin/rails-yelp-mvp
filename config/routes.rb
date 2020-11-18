Rails.application.routes.draw do
  # root to: 'restaurants#index', as: 'restaurants'
  get 'reviews/create'
  get '/restaurants', to: 'restaurants#index', as: 'restaurants'
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post 'restaurants/:id/review', to: 'reviews#create', as: 'restaurant_reviews'

  # resources :restaurants, only: [:show] do
  #   resources :reviews, only: [:new, :create]
  # end
end
