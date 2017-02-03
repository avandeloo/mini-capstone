class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  belongs_to :user
  has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories

  
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

  def default_image
    if images.count > 0
      images.first.url
    else
      "https://www.ebuybit.com/product_img2/10000132.jpg"
    end
  end

  def creator
    user.name
  end
end
