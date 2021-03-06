Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :services do
    resources :bookings, only: [:new, :create]
  end
  get 'my_services', to: "services#my_services"
  resources :bookings do
    get 'confirm_booking', to: "bookings#confirm_booking"
    get 'cancel_booking', to: "bookings#cancel_booking"
    get 'close_booking', to: "bookings#close_booking"
    resources :reviews, only: [:new, :create]
    resources :qas
    resources :booking_statuses
  end
  get 'my_bookings', to: "bookings#my_bookings"

  get 'my_service_bookings', to: "bookings#my_service_bookings"

  resources :categories, only: [:index, :show]
  resources :profiles, except: [:index, :destroy]
    # get "services/search", to: "services#search"
end
