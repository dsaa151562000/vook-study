Rails.application.routes.draw do
  #管理画面
  namespace :admin do
    root to: 'home#index'
  end
  resources :news
  #devise_for :users
  # devise_for :users, controllers: {
  #     omniauth_callbacks: 'users/omniauth_callbacks'
  # }
  devise_for :users, controllers: {
      #:omniauth_callbacks => "omniauth_callbacks"
      omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # devise_for :users, controllers: {
  #      :omniauth_callbacks => 'users/omniauth_callbacks'}
  #devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations', confirmations: 'confirmations'}
  root :to => 'news#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
