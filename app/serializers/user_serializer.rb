class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :address, :state, :city, :zipcode
  has_many :carts
  
end
