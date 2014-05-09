Rails.application.routes.draw do
  root 'itineraries#index'
  resources :itineraries, only: [:index, :show, :new, :create]
end
