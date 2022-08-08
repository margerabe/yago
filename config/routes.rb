Rails.application.routes.draw do
  root to: 'companies#new'
  resources :companies, only: [:new, :show, :create]
end
