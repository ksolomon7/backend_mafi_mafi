class CartsController < ApplicationController
    before_action :authorized

    def new_order
        current_cart = @user.carts.find(params[:id])
        current_cart.update(history: true)
        new_cart = @user.carts.create(history: false)
        render json: {
            current_cart: CartSerializer.new(new_cart),
            previous_cart: CartSerializer.new(current_cart)
        }
    end
end
