LostTribes::Application.routes.draw do
  resources :customers, only: [:new, :create]
  resources :events 
  resources :vendors, only: [:new, :create]
  root :to => 'home#index'
  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
 
end




