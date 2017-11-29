Rails.application.routes.draw do
  devise_for :meaters

  root 'meats#index'
  resources :meeters, only: [:show, :create]
  resources :meats, only: [:index, :update, :show, :edit] do
    resources :bookings, only: [:new]
  end

  resources :bookings, only: [:index, :show, :create]

  post "meats/:id/edit" => "meats#update"
  post "bookings/:id/btn_agree" => "bookings#btn_agree"
  post "bookings/:id/btn_refuse" => "bookings#btn_refuse"
  post "bookings/:id/btn_finalize" => "bookings#btn_finalize"
  post "bookings/:id/btn_cancel" => "bookings#btn_cancel"
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
