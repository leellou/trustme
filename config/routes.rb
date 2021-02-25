Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  devise_for :users
  resources :users, only: [:show] do
    resources :user_providers, only: [:new, :create]
  end
  resources :participations, only: [ :new, :create ]
  resources :games, only: [ :show, :new, :create ] do
    resources :participations, only: [ :edit, :update ]
  end
end
