Rails.application.routes.draw do

  # User Route:
  post "/signup" => "users#create" #everbody

  # Session Route:
  post "/login" => "sessions#create" #everybody

  # Painting Routes:
  get "/paintings" => "paintings#index" #everybody
  get "/paintings/:id" => "paintings#show" #everybody
  post "/paintings" => "paintings#create" #admin
  patch "/paintings/:id" => "paintings#update" #admin
  delete "/paintings/:id" => "paintings#destroy" #admin

  #Artist Routes:
  


end
