class CartedProductsController < ApplicationController

  def index
    if current_user && current_user.cart.any?
      @carted_products = current_user.cart
    else
      flash[:warning] = "You have nothing in your shopping cart. Why not add some delightful merch?"
      redirect_to "/"
    end
    
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

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: 'removed')
    flash[:success] = "Product Removed From Cart"
    redirect_to '/carted_products'
    
  end

end
