Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :comedians do
    resources :reviews, only: %i[new create]
    resources :bookings, only: %i[new create]
  end
  resources :reviews, only: %i[edit update destroy]
  resources :bookings, only: :destroy
  resources :chatrooms do
    resources :messages, only: :create
    collection do
      get :general_channel
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
