Rainforest::Application.routes.draw do
  
  get "reviews/show"
  get "reviews/new"
  get "reviews/edit"
  root 'products#index'

  resources :users, :only => [:new, :create]
  resources :sessions, :only => [:new, :create, :destroy]
  
  resources :products do
    resources :reviews, :except => [:index]
  end
end
