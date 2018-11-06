Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :services do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings do
    resources :reviews, only: [:new, :create]
    resources :qas
    resources :booking_statuses
  end


  resources :categories, only: [:index]
    # get "services/search", to: "services#search"
end
