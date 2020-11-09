class OrdersController < ApplicationController

    def create
       new_order= Order.create(order_params)
       render json: new_order
    end

    def destroy
        order= Order.find(params[:id])
        order.destroy
        render json: order
    end

    def update
        order= Order.find(params[:id])
        order.update(quantity: params[:quantity])
        render json: order
    end

    private

    def order_params
        params.permit(:product_id, :cart_id, :quantity)
    end
end
