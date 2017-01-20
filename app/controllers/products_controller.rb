class ProductsController < ApplicationController
  def one_product
    @product = Product.first
  end

  def all_products
    @product = Product.all
  end

  def add_new_product_form
  end

  def add_new_product_result
    @product = Product.new(
                          name: params["name"],
                          price: params["price"],
                          image: params["image"],
                          description: params["description"],
                          release_date: params["release_date"]

                        )
    @product.save
  end

end
