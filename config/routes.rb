LostTribes::Application.routes.draw do
  resources :customers, only: [:new, :create, :index, :destroy, :show, :edit, :update]
  resources :events, only: [:new, :create, :index, :destroy, :show, :edit, :update]
  resources :vendors, only: [:new, :create, :index, :destroy, :show, :edit, :update]
  root :to => 'home#index'
  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
 
end




