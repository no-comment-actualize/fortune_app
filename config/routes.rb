Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/fortune_url" => "my_examples#fortune_action"
    get "/lotto_url" => "my_examples#lotto_action"
    get "/count_url" => "my_examples#count_action"
  end

end
