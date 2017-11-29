Rails.application.routes.draw do
  devise_for :meaters

  resources :meeters, only: [:show, :create]
  resources :meats, only: [:index, :update, :show] do
    resources :bookings, only: [:new]
  end

  resources :bookings, only: [:index, :show, :create]

  post "bookings/:id/btn_agree" => "bookings#btn_agree"
  post "bookings/:id/btn_refuse" => "bookings#btn_refuse"
  post "bookings/:id/btn_finalize" => "bookings#btn_finalize"
  post "bookings/:id/btn_cancel" => "bookings#btn_cancel"
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
