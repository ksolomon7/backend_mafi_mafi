require 'stripe'
require 'dotenv'
Dotenv.load


class ChargesController < ApplicationController

    def create
        Stripe.api_key = ENV['STRIPE_API_KEY']
        token = params[:charge]
        price = params[:price]

        charge = Stripe::Charge.create({
            amount: price,
            currency: 'usd',
            source: token,
            description: 'Test Charge!'
        })

        render json: charge
    end



end