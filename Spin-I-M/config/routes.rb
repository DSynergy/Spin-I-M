Rails.application.routes.draw do


  root 'static_pages#home'

  # root to: 'playlists#index'

  resources :users
  resources :playlists, only: [:index, :show]
end
