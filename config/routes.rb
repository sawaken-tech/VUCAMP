Rails.application.routes.draw do
  resources :locations
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "top#index"

  resources :top, only: [:index]

  resources :camps do
    collection do
      get 'vucamp', to: 'camps#vucamp'
    end
  end

  # get '/map_request', to: 'maps#map', as: 'map_request'

end
