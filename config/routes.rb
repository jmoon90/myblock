Rails.application.routes.draw do
  root 'itineraries#index'
  resources :itineraries, only: [:index, :new] do
    resources :locations, only: [:new]
  end
end
