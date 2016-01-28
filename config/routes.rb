Rails.application.routes.draw do

  get 'payments/new'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  resources :yummyboxes, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

end
