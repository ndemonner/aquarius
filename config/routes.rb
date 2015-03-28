Rails.application.routes.draw do
  resources :state_targets, only: [:create, :show, :patch]
end
