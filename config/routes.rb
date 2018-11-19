Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'home', to: 'pages#home'
  get 'excursions', to: 'pages#excursions'
  get 'bike4delivery', to: 'pages#bike4delivery'
  get 'faq', to: 'pages#faq'
  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch 'booking/:id', to: "bookings#update", as: 'update_booking'
  resources :bookings, only: [:index, :show, :edit, :update]
  resources :motorcycles, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :blogposts
end
