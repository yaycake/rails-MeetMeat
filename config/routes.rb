Rails.application.routes.draw do
  get 'meat/index'

  get 'meaters/index'

  get 'meaters/create'

  get 'meaters/show'

  get 'meaters/edit'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
