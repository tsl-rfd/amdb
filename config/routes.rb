Amdb::Application.routes.draw do

  get '/logout' => "sessions#destroy"
  
  # 1. Use this route to display a login form
  get "sessions/new" => "sessions#new"
  
  # 2. Use this route to verify the email address
  # and create a cookie to remember who 
  # logged in.
  # Then redirect the user to the home page.
  post "sessions" => "sessions#create"
  
  # 3. Remove the User select from the voting
  # form, and record the vote based on the 
  # params hash and the session hash.
  
  resources :votes
  resources :users
  resources :roles
  resources :actors
  resources :movies
  resources :directors
end
