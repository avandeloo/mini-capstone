class ProductsController < ApplicationController

  def index
    @products = Product.all

    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_amount = params[:discount]
    search_term = params[:search_term]

    if search_term
      @products = @products.where("name iLIKE ? OR description iLIKE ?", 
                                "%#{search_term}%",
                                "%#{search_term}%")
    end
    
    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    elsif discount_amount
      @products = @products.where("price < ?", discount_amount)
    end

  end

  def new
    
  end

  def create
    product = Product.new(
                        name: params[:name],
                        price: params[:price],
                        description: params[:description],
                        release_date: params[:release_date],
                        supplier_id: params[:supplier][:supplier_id]
                        )
    product.save

    flash[:success] = "Product #{product.name} Created Successfully."
    redirect_to "/products/#{product.id}"
  end

  def show
    if params[:id] == "random"
      product = Product.all.sample
      redirect_to "/products/#{product.id}"
    else
      @product = Product.find(params[:id])
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])

    product.name = params[:name]
    product.price = params[:price]
    product.image = params[:image]
    product.description = params[:description]
    product.release_date = params[:release_date]
    product.supplier_id = params[:supplier_id]

    product.save

    flash[:success] = "Product #{product.name} Updated Successfully."
    redirect_to "/products/#{product.id}"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    flash[:warning] = "Product #{product.name} Deleted Successfully."
    redirect_to "/products"
  end

end
