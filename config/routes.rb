  Rails.application.routes.draw do
  require "sidekiq/web"
  devise_for :users
  root to: 'pages#home'
  resources :shops, only: [:index, :show] do
    resources :promotion
    resources :cards, only: [:create, :update, :destroy]
  end
  get '/qr/:id', to: 'pages#star_form', as: 'cards'
  post '/qr/:id/add', to: 'pages#add_stamp', as: 'stamp'
  get '/dashboard', to: 'pages#dashboard'

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end


