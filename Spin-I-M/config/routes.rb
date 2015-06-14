Rails.application.routes.draw do

  root to: 'playlists#index'

  resources :users
  resources :playlists, only: [:index, :show]
end
