Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :shops, only: [:index, :show] do
    resources :promotion
    resources :cards, only: [:create, :show, :update, :destroy]
  end
end

