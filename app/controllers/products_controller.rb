class ProductsController < ApplicationController
  def one_product
    @product = Product.first
  end

  def all_products
    @product = Product.all
  end
end
