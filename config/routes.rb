Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  resources :events, only: [:index, :new, :create]
  resources :users,  only: [:edit, :update]
  resources :departments, only: [:new, :create]
end
