Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :rooms, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  root 'rooms#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
