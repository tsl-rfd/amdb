Amdb::Application.routes.draw do
  resources :votes

  resources :users

  resources :roles

  resources :actors

  resources :movies

  resources :directors
end
