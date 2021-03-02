Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"
    post "/songs" => "songs#create"
  end
end
