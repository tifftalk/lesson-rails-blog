Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :articles
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'



  root to: 'articles#index'
end
