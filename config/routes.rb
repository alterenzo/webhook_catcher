Rails.application.routes.draw do
  resources :stats, only: [:index]
  resources :events, only: [:create]
end
