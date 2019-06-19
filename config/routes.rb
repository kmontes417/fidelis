Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :shops, only: [:index, :show] do
    resources :promotion
<<<<<<< HEAD
    resources :cards, only: [:new, :create, :show, :edit, :update, :destroy]
    get '/qr/:id', to: 'pages#add_stamp'
=======
    resources :cards, only: [:create, :show, :update, :destroy]
>>>>>>> master
  end
  get '/dashboard', to: 'pages#dashboard'
end

