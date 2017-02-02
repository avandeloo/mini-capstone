class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def calculate_subtotal
    self.subtotal = product.price * quantity
  end

  def tax 
    self.tax = subtotal * 0.09
  end

  def total
    self.total = subtotal + tax
  end

end
