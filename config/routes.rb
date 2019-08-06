Rails.application.routes.draw do
  #get 'home/index'
  resources :news
  get 'pages/home'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


#api routing:

namespace :api do
    resources :news, only: %i[index]
  end

end
