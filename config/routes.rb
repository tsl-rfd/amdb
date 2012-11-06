Amdb::Application.routes.draw do
  resources :roles

  resources :actors

  resources :movies

  resources :directors
end
