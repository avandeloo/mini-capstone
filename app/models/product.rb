class Product < ApplicationRecord
  def discounted?
    price < 40
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
