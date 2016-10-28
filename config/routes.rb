Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :articles
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'

  # You don't need this one, and it's not standard to use get request to destroy
  # a session. It's just a dev tool for easily logging out.
  get 'logout', to: 'sessions#destroy'

  root to: 'articles#index'
end
