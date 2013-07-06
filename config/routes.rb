Rainforest::Application.routes.draw do
  
  root 'products#index'

  resources :users, :only => [:new, :create]
  resources :sessions, :only => [:new, :create, :destroy]
  
  resources :products do
    resources :reviews, :except => [:index]
  end
end
