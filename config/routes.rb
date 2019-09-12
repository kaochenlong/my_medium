Rails.application.routes.draw do
  devise_for :users

  resources :stories

  root 'pages#index'
end
