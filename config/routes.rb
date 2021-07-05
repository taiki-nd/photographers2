Rails.application.routes.draw do
  get 'pages/company'
  get 'pages/contact'
  get 'pages/notice'
  get 'pages/report'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  
  resources :posts do
    resources :comments, only: [:create, :destroy, :edit, :update]
    collection do
      get 'search'
    end
    
  end
  
  resources :users, only: [:show, :edit, :update] do
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  
  resources :relationships, only: [:create, :destroy]
  
  
  resources :cameras do
    resources :reviews, only: [:create, :destroy, :edit, :update]
  end
  
  resources :lenzs do
    resources :reviewws, only: [:create, :destroy, :edit, :update]
  end
  
  resources :pages, only: [:create, :destroy, :edit, :update]
  
end
