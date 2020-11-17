class User < ApplicationRecord
    has_secure_password
    has_many :carts
    after_create :set_current_cart
    validates :username, presence: true, uniqueness: true
    

    def full_name
        self.first_name + ' ' + self.last_name
    end

    def user_current_cart
        current_cart= self.carts.find_by(history:false)
        CartSerializer.new(current_cart)
    end

    def past_orders
        all_past_orders=self.carts.where(history:true)
        all_past_orders.map do |past_order| 
            CartSerializer.new(past_order)
        end
    end

    def set_current_cart
        self.carts.create
    end
end
