Rails.application.routes.draw do
  
  devise_for :players
  root to: redirect('/welcome')
  devise_scope :player do
    get '/players/sign_out' => 'devise/sessions#destroy'
  end
 

  get 'welcome', to: 'pages#welcome', as: 'welcome'
  get 'about', to: 'pages#about', as: 'about'
  get 'help', to: 'pages#help', as: 'help'
  get 'village', to: 'pages#village', as: 'village'
  get 'village/:player_id/edit', to: 'pages#edit', as: 'edit_player_name'
  patch 'village', to: 'pages#update'
  get 'arena', to: 'pages#arena', as: 'arena'
  get 'battleai', to: 'pages#battleai', as: 'battleai'
  get 'battleai/rando', to: 'pages#random_number', as: 'random_number'
  get 'battleplayer', to: 'pages#battleplayer', as: 'battleplayer'

  get 'personal_pages/:player_id', to: 'personal_pages#show', as: 'personal_page'
  get 'personal_pages/:player_id/edit', to: 'personal_pages#edit', as: 'edit_personal_page'
  patch 'personal_pages/:player_id', to: 'personal_pages#update'
  get 'inventories/:player_id', to: 'inventories#show', as: 'inventory'
  get 'items/:id/edit', to: 'items#edit', as: 'edit_item'
  post 'village', to: 'pages#create_friend'
  get 'village/:player_id/new', to: 'pages#add_friend', as: 'new_friend'
  get 'village/:player_id/remove/:identification_number', to: 'pages#destroy', as: 'remove_friend'

end
