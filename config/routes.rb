Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'my'
  resources :users
  resources :notes
  get 'users/index'
  get 'notes/index'
  get 'home/users'
  get 'home/index'
  root 'notes#index'
end
