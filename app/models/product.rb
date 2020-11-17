class Product < ApplicationRecord
  belongs_to :category

  def item_category
    self.category.style
  end
end
