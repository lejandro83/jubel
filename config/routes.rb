Rails.application.routes.draw do
  devise_for :users
  resources :experiences
  resources :items
  resources :trips
  resources :guests
  resources :itineraries, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
