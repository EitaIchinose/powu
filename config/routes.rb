Rails.application.routes.draw do
  devise_for :users
  root to: "departments#index"
  resources :users,  only: [:edit, :update]
  resources :departments, only: [:new, :create, :destroy] do
    resources :events, only: [:index, :new, :create]
  end
end
