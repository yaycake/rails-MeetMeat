Rails.application.routes.draw do
  devise_for :meaters

  root 'meats#index'
  resources :meaters, only: [:show, :create]
  resources :meats, only: [:index, :update, :show, :edit] do
    resources :bookings, only: [:new]
  end

  resources :bookings, only: [:index, :show, :create]

  get "profile" => "meaters#profile"
  post "meats/:id/edit" => "meats#update"
  post "bookings/:id/agree" => "bookings#agree"
  post "bookings/:id/reject" => "bookings#reject"
  post "bookings/:id/finalize" => "bookings#finalize"
  post "bookings/:id/cancel" => "bookings#cancel"
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
