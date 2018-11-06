Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :bookings do
    resources :reviews, only: [:new, :create]
    resources :qas
    resources :booking_statuses
  end
  resources :services do
    collection do
      get :my_services
    end
  end

  resources :categories, only: [:index]
  resources :profiles, except: [:index, :destroy]
    # get "services/search", to: "services#search"
end
