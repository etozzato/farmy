Rails.application.routes.draw do
  namespace :dashboard do
    resources :samples
    root to: "samples#index"
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post '/', to: 'application#index'
end
