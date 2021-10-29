Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  resources :books
  resources :users, :only=> [:show, :edit, :index, :new, :post, :update, :destroy]
  resource :favorites, only: [:create, :destroy]
  get 'home/about' => 'homes#about'
end
