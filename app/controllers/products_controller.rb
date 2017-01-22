class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    
  end

  def create
    @product = Product.new(
                        name: params[:name],
                        price: params[:price],
                        image: params[:image],
                        description: params[:description],
                        release_date: params[:release_date]
                        )
    @product.save
  end

end
