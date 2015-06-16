Rails.application.routes.draw do


  root 'static_pages#home'

  # root to: 'playlists#index'

  resources :users
  resources :playlists, only: [:index, :show]

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end
