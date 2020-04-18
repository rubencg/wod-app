Rails.application.routes.draw do
  get 'wod_creator/create'
  devise_for :users
  resources :movements
  resources :wods
  resources :categories

  root 'wods#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
