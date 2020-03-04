Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :patients, only: [:new, :create, :edit, :update]
  resources :standard_surveys, only: [:edit, :update]

  namespace :twilio do
    resources :sms_statuses, only: [:create]
  end
end
