Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch 'booking/:id', to: "bookings#update", as: 'update_booking'
  resources :bookings, only: [:index, :show, :edit, :update]
  resources :motorcycles, only: [:index, :show] do
    resources :bookings, only: [:new, :create]

  end
end
