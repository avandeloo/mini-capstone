Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/suppliers' => 'suppliers#index'

  get '/products/:product_id/images/new' => 'images#new'
  post '/products/:product_id/images' => 'images#create'

  get 'products/new' => 'products#new'
  post '/products' => 'products#create'
  get 'suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'

  post '/products/search' => 'products#search'
  post '/suppliers/search' => 'suppliers#search'
  
  get '/products/:id' => 'products#show'
  get '/suppliers/:id' => 'suppliers#show'

  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'

  delete '/products/:id' => 'products#destroy'
  delete '/suppliers/:id' => 'suppliers#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
  delete '/carted_products/:id' => 'carted_products#destroy'

end
