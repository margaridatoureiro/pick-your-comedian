Rails.application.routes.draw do
  root to: 'comedians#index'
  resources :comedians do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[edit update destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
