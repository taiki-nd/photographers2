Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  
  resources :posts do
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  
  resources :users, only: [:show, :edit, :update]
  
  resources :cameras do
    resources :reviews, only: [:create, :destroy]
  end
  
  resources :lenzs do
    resources :reviewws, only: [:create, :destroy]
  end
  
end
