class Cart < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :products, through: :orders

  def total
    self.products.sum(:price)
  end
  
  def ordered_on
    self.created_at.strftime("%m/%d/%Y")
  end
end
