Rails.application.routes.draw do
  devise_for :users
  root to: "songs#index"
  resources :songs, only: [:index, :show, :new, :create]
  patch  '/songs/:id'       => 'songs#liked', as: "liked_song"
  resources :vibes, only: [:index, :show]
  resources :artists, only: [:index, :show]
  resources :genres, only: [:index, :show]
  get '/about' => 'about#index'
  get '/search' => 'search#index'
end
