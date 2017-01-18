Rails.application.routes.draw do
  get '/one_product_url' => 'products#one_product'
  get '/all_products_url' => 'products#all_products'
end
