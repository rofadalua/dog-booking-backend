class Api::B1::UsersController < ApplicationController
    def index
        @users = User.all 
        render json: @users
    end

    def create
        # binding.pry
        @user = User.new(user_params)
        if @user.save 
            render json: @user
        else 
            render json: {error: "Please fill all the line"}
        end
    end

    def show 
        @user = User.find(params[:id])
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name)
    end

end
