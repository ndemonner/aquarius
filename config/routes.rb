Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :state_targets, only: [:index, :create, :show, :patch]
end
