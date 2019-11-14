Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only: [] do
    member do
      post :follow
    end
  end

  resources :stories do 
    member do
      post :clap
    end
    resources :comments, only: [:create]
  end

  # /@kaochenlong/文章標題-123
  get '@:username/:story_id', to: 'pages#show', as: 'story_page'

  # /@kaochenlong/
  get '@:username', to: 'pages#user', as: 'user_page'

  get "/demo", to: 'pages#demo'
  root 'pages#index'
end
