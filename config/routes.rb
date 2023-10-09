Rails.application.routes.draw do

  # User Route:
  post "/signup" => "users#create" #everbody

  # Session Route:
  post "/login" => "sessions#create" #all users

  # Painting Routes:
  get "/paintings" => "paintings#index" #all users
  get "/paintings/:id" => "paintings#show" #all users
  post "/paintings" => "paintings#create" #admin
  patch "/paintings/:id" => "paintings#update" #admin
  delete "/paintings/:id" => "paintings#destroy" #admin

  #Artist Routes ----> DO I NEED THESE?#
  post "/artists" => "artists#create" #admin
  patch "/artists/:id" => "artists#update" #admin
  delete "/artists/:id" => "artists#destroy" #admin

 
  #Order Routes:
  post "/orders" => "orders#create" #all users 
  get "orders/:id" => "orders#show" #all users
  get "/orders" => "orders#index" #all users

  #Category Routes:
  post "/categories" => "categories#create" #admin
  delete "/categories/:id" => "categories#destroy" #admin

end

