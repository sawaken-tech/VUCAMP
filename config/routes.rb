Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "camps#index"

  resources :camps do
    collection do
      get 'random', to: 'camps#random'
    end
  end

end
