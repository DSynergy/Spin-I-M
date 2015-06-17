Rails.application.routes.draw do

  root 'playlists#index'

  resources :users
  resources :playlists

  post   'login',  to: 'sessions#create'
  get    'login',  to: 'sessions#new'

  delete 'logout', to: 'sessions#destroy'

end
