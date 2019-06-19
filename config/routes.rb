Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :shops, only: [:index, :show] do
    resources :promotion
    resources :cards, only: [:new, :create, :show, :edit, :update, :destroy]
    get '/qr/:id', to: 'pages#add_stamp'
  end
  get '/dashboard', to: 'pages#dashboard'

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end

