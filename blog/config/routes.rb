Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update]

  get 'welcome/index'

  resources :articles do
  	resources :comments
  end

  root 'welcome#index'
end
