class CartedProductsController < ApplicationController

  def index
    @carted_products = current_user.cart
    
  end

  def create
    cart = CartedProduct.new(
                            user_id: current_user.id,
                            product_id: params[:product_id],
                            quantity: params[:quantity],
                            status: "carted"
                            )
    cart.save

    redirect_to "/carted_products"
      
  end

  def new
  end

end
