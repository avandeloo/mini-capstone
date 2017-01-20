Rails.application.routes.draw do
  get '/one_product_url' => 'products#one_product'
  get '/all_products_url' => 'products#all_products'
  get '/add_product_url' => 'products#add_new_product_form'
  post '/add_product_result_url' => 'products#add_new_product_result'
end
