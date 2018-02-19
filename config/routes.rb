Rails.application.routes.draw do
  devise_for :users
  root to: "songs#index"
  resources :songs, only: [:index, :show, :new, :create]
  resources :vibes, only: [:index, :show]
  resources :artists, only: [:index, :show]
  resources :genres, only: [:index, :show]

end
