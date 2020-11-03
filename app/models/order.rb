class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def ordered_on
    self.created_at.strftime("%m/%d/%Y")
  end

  def product_name
    self.product.product_name
  end

  def product_price
    self.product.price 
  end

  def product_image
    self.product.image 
  end


end
