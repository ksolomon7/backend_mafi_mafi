class CartSerializer < ActiveModel::Serializer
  attributes :id, :history, :total, :ordered_on
  has_many :orders
end
