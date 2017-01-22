class ProductsController < ApplicationController

  def index
    @products = Product.all
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

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name]
    @product.price = params[:price]
    @product.image = params[:image]
    @product.description = params[:description]
    @product.release_date = params[:release_date]

    @product.save
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    
  end

end
