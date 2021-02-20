Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  resources :participations, only: [ :create ]
  resources :games, only: [ :show, :new, :create ] do
    resources :participations, only: [ :edit, :update ]
  end
  resources :user_providers, only: [ :new, :create ]
end
