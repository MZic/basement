Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :authentication do
    post :authenticate
  end

  resources :home, only: [:index]
  resources :plan, only: [:show]
  resources :currency, only: [:show]
end
