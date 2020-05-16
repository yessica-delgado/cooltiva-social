Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users

  resources :activities, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, only: [ :new, :create ]
    resources :bookings, only: [ :new, :create ]
  end
  resources :pages, only: [:home]
  resources :reviews, only: [ :destroy ]
  resources :bookings, only: [ :index]
end
