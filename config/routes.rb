Rails.application.routes.draw do

  # Admin routes
  namespace :admin do
    resources :article_categories
    resources :articles
    resources :users
  end

  # App routes

  resources :article_categories, shallow: true, only: %i[ show index ] do
    resources :articles, only: %i[ show index ]
  end

  get '/', to: 'main#index'

  # Authentication

  resources :users, only: %i[ new  create]
  namespace :authentication do
    resources :session, only: %i[ new create destroy ]
  end

end
