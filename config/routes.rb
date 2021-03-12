Rails.application.routes.draw do
  devise_for :users
  get 'events/index'
  root to: "events#index"
  resources :events, only: [:new, :create]
  resources :users,  only: [:edit, :update]
end
