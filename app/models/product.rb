class Product < ApplicationRecord
  def sale_message
    message = "Discount Item!" if price < 2
    message = "Everyday Value!!" if price > 2
    message
  end
  
  def item_discount
    item_type = "regularPrice" if price > 2
    item_type = "discountPrice" if price < 2
    item_type
  end


  def tax
    @tax = price * 0.09
    sprintf("%.2f", @tax.round(2))
  end

  def total
    total = price + @tax
    sprintf("%.2f", total.round(2))
  end
end
