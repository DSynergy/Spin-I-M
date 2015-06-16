Rails.application.routes.draw do

  root 'static_pages#home'

  resources :users
  resources :playlists, only: [:index, :show]

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end
