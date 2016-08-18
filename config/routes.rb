Rails.application.routes.draw do
  resources :stats, only: [:index]
end
