Rails.application.routes.draw do

  devise_for :users
  root to: 'orders#show'

  resources :orders do

        resources :items, only: [:show]

        resources :current_orders, only: [:create]

        end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
