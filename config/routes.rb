Rails.application.routes.draw do
  devise_for :users
  resources :photos, only: [:show, :new, :create, :index, :edit, :update]

  root 'photos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
