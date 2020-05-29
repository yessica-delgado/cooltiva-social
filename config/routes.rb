Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :users
    resources :activities  do
      resources :bookings, only: [ :create ]
      resources :reviews, only: [ :new, :create ]
  end
  resources :pages, only: [:home]
  resources :bookings, only: [ :index, :destroy]
end

