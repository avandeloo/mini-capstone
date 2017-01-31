class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all

    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    
    if sort_attribute && sort_order
      @suppliers = @suppliers.order(sort_attribute => sort_order)
    end

  end

  def search
    @suppliers = Supplier.all
    search_attribute = params[:search]
    
    @suppliers = @suppliers.where('name iLIKE ? OR description iLIKE ?', "%#{search_attribute.downcase}%", "%#{search_attribute.downcase}%")

  end

  def new
    
  end

  def create
    supplier = Supplier.new(
                        name: params[:name],
                        email: params[:email],
                        phone: params[:phone]
                        )
    supplier.save

    flash[:success] = "Supplier #{supplier.name} Created Successfully."
    redirect_to "/suppliers/#{supplier.id}"
  end

  def show
    if params[:id] == "random"
      supplier = Supplier.all.sample
      redirect_to "/suppliers/#{supplier.id}"
    else
      @supplier = Supplier.find(params[:id])
    end
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    supplier = Supplier.find(params[:id])

    supplier.name = params[:name]
    supplier.email = params[:email]
    supplier.phone = params[:phone]

    supplier.save

    flash[:success] = "Supplier #{supplier.name} Updated Successfully."
    redirect_to "/suppliers/#{supplier.id}"
  end

  def destroy
    supplier = Supplier.find(params[:id])
    supplier.destroy

    flash[:warning] = "Product #{supplier.name} Deleted Successfully."
    redirect_to "/suppliers"
  end

end

