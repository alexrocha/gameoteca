# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get "welcome/index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "main#index"

  get "main/index"
  get "profile", to: "main#profile"
  get "games", to: "main#games"
  get "browse", to: "main#browse"
  get "details", to: "main#details"
  get "streams", to: "main#streams"
  
end
