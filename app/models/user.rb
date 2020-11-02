class User < ApplicationRecord
    has_secure_password
    has_many :carts

    def user_current_cart
        current_cart= self.carts.find_by(history:false)
        CartSerializer.new(current_cart)
    end

    def past_orders
        past_order=self.carts.find_by(history:true)
        CartSerializer.new(past_order)
    end
end
