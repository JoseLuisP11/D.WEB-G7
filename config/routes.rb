Rails.application.routes.draw do
 resources :notes

 
 get 'notes/index'
 get 'notes/edit'
 get 'notes/show'

 
 root 'home#index'
end
