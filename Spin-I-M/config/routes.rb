Rails.application.routes.draw do

  get 'static_pages/Home'

  root to: 'playlists#index'

  resources :users
  resources :playlists, only: [:index, :show]
end
