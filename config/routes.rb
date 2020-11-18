Rails.application.routes.draw do
  # root to: 'restaurants#index', as: 'restaurants'
  get 'reviews/create'
  get '/restaurants', to: 'restaurants#index', as: 'restaurants'
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant' do
  #   # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  #   get 'reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  # end
  resources :restaurants, only: [:show] do
    resources :reviews, only: [:new, :create]
  end

end
