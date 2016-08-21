Rails.application.routes.draw do
  root to: "stats#index"
  resources :stats, only: [:index]
  resources :events, only: [:create]
end
