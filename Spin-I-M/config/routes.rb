Rails.application.routes.draw do

  get 'static_pages/home'

  root 'static_pages#home'

  # root to: 'playlists#index'

  resources :users
  resources :playlists, only: [:index, :show]
end
