class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(params[user_params])
        @user.save 
        redirect_to portfolio_path(@user.portfolios)
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :password, :email)
    end

end
