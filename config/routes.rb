Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => {registrions: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  resources :guardians do
    resources :kids
    resources :cases
  end


    # root "controller#view"
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
  root "static_pages#index"
end
