Rails.application.routes.draw do
  get 'wod_creator/create'
  post 'wod_creator/upload', to: 'wod_creator#upload'
  devise_for :users
  resources :wod_log, :only => [:new, :show, :create, :index]
  resources :movements
  resources :wods
  resources :categories

  root 'wods#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
