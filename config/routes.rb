Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :stories

  # /@kaochenlong/文章標題-123
  get '@:username/:story_id', to: 'pages#show', as: 'story_page'

  # /@kaochenlong/
  get '@:username', to: 'pages#user', as: 'user_page'

  root 'pages#index'
end
