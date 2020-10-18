Rails.application.routes.draw do
  get 'authors/new'
  root 'books#index'
  resources :books
end
