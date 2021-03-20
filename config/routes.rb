Rails.application.routes.draw do
  get 'home/index'
 resources :notes

 
 get 'notes/index'
 get 'notes/edit'
 get 'notes/show'

 
 root 'home#index'
end
