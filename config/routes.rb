Rails.application.routes.draw do
  resources :machines
  resources :machine_types
  devise_for :users, skip: [:registrations]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users	
  root "pages#home"
end
