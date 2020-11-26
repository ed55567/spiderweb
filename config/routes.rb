Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #get "/spiders" => "spiders#index"
    #get "/spiders/:id" => "spiders#show"
    #post "/spiders" => "spiders#create"
    #patch "/spiders/:id" => "spiders#update"
    #delete "/spiders/:id" => "spiders#destroy"

    get "/spiders" => "spiders#index"
  end
end
