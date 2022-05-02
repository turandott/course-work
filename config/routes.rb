Rails.application.routes.draw do
  devise_for :accounts
  resources :properts

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile

  # get 'dashboard/properts'
  # get 'dashboard/reports'

  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
