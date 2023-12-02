Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :tasks

  resources :users do
    member do
      get 'edit_privacy'
      patch 'update_privacy'
    end
  end
end
