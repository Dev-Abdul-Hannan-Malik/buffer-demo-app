# frozen_string_literal: false

# Router File
Rails.application.routes.draw do
  # GET /about
  get 'about-us', to: 'about#index', as: :about
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'main#index'
end
