Rails.application.routes.draw do

  root :to => 'pages#home'
      resources :users
      get '/users/result' => 'users#result'
      resources :services
      resources :from_languages
      resources :to_languages
      resources :documents
      resources :orders
      # get '/order' => 'orders#new'

      patch "/orders" => "orders#create"

      post "/search" => "pages#search", as: :search_translator #dont delete



   #login routes
    get '/login' => 'session#new' # login form
    post '/login' => 'session#create' # perform a login
    delete '/login' => 'session#destroy' # perform a log out

    # #service routes
    get '/service' => 'service#new'

end
