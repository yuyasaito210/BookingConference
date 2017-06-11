Rails.application.routes.draw do
  # resources :minutes
  resources :directors
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :companies
  resources :companies do
    resources :minutes
    member do
      post :show_minutes
      get :show_minutes
    end
  end
  root to: 'visitors#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
