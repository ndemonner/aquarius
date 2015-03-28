Rails.application.routes.draw do
  resources :state_targets, only: [:index, :create, :show, :patch]
end
