Rails.application.routes.draw do

  root 'playlists#index'
  
  post 'songs/increase/:id', to: "songs#increase", as: :increase
  post 'songs/decrease/:id', to: "songs#decrease", as: :decrease


  resources :users
  resources :playlists

  post   'login',  to: 'sessions#create'
  get    'login',  to: 'sessions#new'

  delete 'logout', to: 'sessions#destroy'

end
