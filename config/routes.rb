Rails.application.routes.draw do
  devise_for :users
  resources :notes

  
  get 'notes/index'
  get 'notes/edit'
  get 'notes/show'
  get 'home/index'
  
  root 'notes#index'
end
