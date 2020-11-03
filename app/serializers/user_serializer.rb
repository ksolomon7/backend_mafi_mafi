class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :user_current_cart, :past_orders
end
