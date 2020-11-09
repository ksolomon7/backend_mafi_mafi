class Cart < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :products, through: :orders

  def total
    # self.products.sum(:price)
    
    sum = 0
    if self.orders.length > 1
      self.orders.each do |order|
        quantity_total=order[:quantity] * order.product_price
        sum += quantity_total
      end
    else
      self.orders.each do |order|
        single_order=order[:quantity] * order.product_price
        return single_order
      end
    end

     return sum
  end
  

  def ordered_on
    self.created_at.strftime("%m/%d/%Y")
  end
end
