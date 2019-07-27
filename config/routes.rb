Rails.application.routes.draw do

  devise_for :users
  root to: 'orders#show'

  resources :orders do

        resources :items

        resources :current_orders

        member do

          get "pay"

          get "cart"

        end

        end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
