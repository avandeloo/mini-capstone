class User < ApplicationRecord
  has_many :carted_products
  has_many :orders
  has_secure_password

  def cart
    carted_products.where(status: 'carted')
  end

end
