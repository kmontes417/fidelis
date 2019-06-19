  Rails.application.routes.draw do
  require "sidekiq/web"
  devise_for :users
  root to: 'pages#home'
  resources :shops, only: [:index, :show] do
    resources :promotion
    resources :cards, only: [:create, :update, :destroy]
  end
  get '/qr/:id', to: 'pages#add_stamp'
  get '/dashboard', to: 'pages#dashboard'

  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end
end
