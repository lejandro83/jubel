Rails.application.routes.draw do
  root 'experiences#home'
  devise_for :users
  resources :users
  resources :experiences
  resources :items
  resources :guests
  resources :itineraries, except: [:index]
  resources :trip_templates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
