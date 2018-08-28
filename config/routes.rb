Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/edit'
  root :to => 'pages#home'
      resources :users
      resources :services
      resources :from_languages
      resources :to_languages
      resources :documents
      resources :orders




   #login routes
    get '/login' => 'session#new' # login form
    post '/login' => 'session#create' # perform a login
    delete '/login' => 'session#destroy' # perform a log out

    #service routes
    get '/service' => 'service#new'

end
