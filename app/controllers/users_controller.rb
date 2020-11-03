class UsersController < ApplicationController
    before_action :authorized, only: [:keep_logged_in]

    def index
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            user_token = encode_token({user_id: @user.id})

            render json: {
                user: UserSerializer.new(@user), 
                token: user_token
            }

        else
            render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
        end
    end

    def keep_logged_in

        user_token = encode_token({user_id: @user.id})

        render json: {
            user: UserSerializer.new(@user), 
            token: user_token
        }
    end


    
    def show
        @user = User.find(params[:id])
        user_token = encode_token({user_id: @user.id})

        render json: {
            user: UserSerializer.new(@user), 
            token: user_token
        }
    end
end
