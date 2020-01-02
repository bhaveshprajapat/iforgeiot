Rails.application.routes.draw do
  devise_for :users, skip: [:sessions]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    # Sessions
    get    'login',  to: 'devise/sessions#new',     as: :new_user_session
    post   'login',  to: 'devise/sessions#create',  as: :user_session
    get    'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  resources :users
end
