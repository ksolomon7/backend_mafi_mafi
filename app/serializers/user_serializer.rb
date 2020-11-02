class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_current_cart, :past_orders
  
  
end
