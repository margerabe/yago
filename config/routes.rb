# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'companies#new'
  resources :companies, only: %i[new show create]
end
