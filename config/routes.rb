Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'books#index'

  resources :users, only: [:edit, :update]
  resources :books, only: [:index, :show, :new, :create, :edit, :update] do
    resources :characters, only: [:index, :create]
  end
end
