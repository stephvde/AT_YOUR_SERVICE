Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bookings do
    resources :reviews, only: [:new, :create]
    resources :qas
    resources :booking_statuses
  end
  resources :services

  get '/services/myservices', to: 'services#myservices'
end
