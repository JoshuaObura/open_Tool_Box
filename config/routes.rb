Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tools do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :destroy, :index, :show ]
  resources :users, only: [ :show ]
 end
