Rails.application.routes.draw do
  devise_for :meaters

  resources :meeters, only: [:show, :create]
  resources :meats, only: [:index, :update, :show] do
    resources :bookings, only: [:new]
  end

  resources :bookings, only: [:index, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
