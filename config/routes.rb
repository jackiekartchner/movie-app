Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  get "/actors" => "actors#index"
  get "/acrots/new" => "acrots#new"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  get "/actors/:id/edit" => "actors#edit"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

  get "/movies" => "movies#index"
  get "/movies/new" => "movies#new"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  get "/movies/:id/edit" => "movies#edit"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors/:id" => "actors#show"
    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "actors/:id" => "actors#destroy"
    
    get "/movies/:id" => "movies#show"
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "movies/:id" => "movies#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
