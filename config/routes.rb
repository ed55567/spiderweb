Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/spiders" => "spiders#index"

    post "/spiders" => "spiders#create"

    get "/spiders/:id" => "spiders#show"

    patch "/spiders/:id" => "spiders#update"
  end
end
