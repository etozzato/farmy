Rails.application.routes.draw do
  # namespace :dashboard do
  #   resources :samples
  #   root to: "samples#index"
  # end

  namespace :api do
    resources :companies do
      get 'nif', on: :member
    end
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "admin/dashboard#index"
end
