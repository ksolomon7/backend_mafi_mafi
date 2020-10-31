class CategorySerializer < ActiveModel::Serializer
  attributes :id, :style
  has_many :products
  
end
