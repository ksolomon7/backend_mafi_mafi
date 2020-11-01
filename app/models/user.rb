class User < ApplicationRecord
    has_secure_password
    has_many :carts

    def user_current_cart
        current_cart= self.carts.find_by(history:false)
        byebug
        CartSerializer.new(current_cart)
    end

end
