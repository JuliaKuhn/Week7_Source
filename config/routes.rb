Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

resources :items 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resource :session

  get 'about', to: 'pages#about'
  root 'pages#home'
end
