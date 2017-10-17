Rails.application.routes.draw do


  devise_for :users
  resources :photos, only: [:show, :new, :create, :index, :edit, :update]

  root 'photos#index'

  resources :users, only: [:show, :index], controller: :profiles
  resource :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
