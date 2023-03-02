Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: "pages#home"

  resources :sharks do
    resources :bookings, only: [:new, :create, :show]
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :index]
  resources :reviews, only: [:destroy]
end
