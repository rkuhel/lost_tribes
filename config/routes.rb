LostTribes::Application.routes.draw do
  resources :customers 
  resources :events 
  resources :vendors 
  root :to => 'home#index'

 
end
