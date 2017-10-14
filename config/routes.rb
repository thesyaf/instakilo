Rails.application.routes.draw do
  resources :hearts
  devise_for :users
  resources :photos, only: [:show, :new, :create, :index, :edit, :update]


  resources :photos do
    resources :comments
  end

  root 'photos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
