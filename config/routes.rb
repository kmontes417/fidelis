Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :shops, only: [:index, :show] do
    resources :promotion
    resources :cards, only: [:new, :create, :show, :edit, :update, :delete]
  end
end


