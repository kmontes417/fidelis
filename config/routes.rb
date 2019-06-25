  Rails.application.routes.draw do
  require "sidekiq/web"
  devise_for :users
  root to: 'pages#home'
  resources :shops, only: [:index, :show, :edit, :delete] do
    resources :promotions
    resources :cards, only: [:create, :update, :destroy]
  end
  get '/qr/:token', to: 'pages#star_form', as: 'cards'
  post '/qr/:token/add', to: 'pages#add_stamp', as: 'stamp'
  get '/dashboard', to: 'pages#dashboard'
  post '/card/:id', to: 'pages#close', as: 'close'

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end


