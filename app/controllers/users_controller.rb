class UsersController < ApplicationController
    # has_secure_password
    # attr_reader :password
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def show

    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def edit

    end 
    
    def update
        @user.update(user_params)
        redirect_to @user
    end

    def destroy
        @user.destroy
        redirect_to users_path
    end

    # def password=(plain_text_pw)
    #     self.password_digest = BCrypt::Password.create(plain_text_pw)
    # end

    # def authenticate
    #     if BCrypt::Password.new(self.password_digest) == ptpw
    #         @user
    #     else
    #         false
    #     end
    # end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :password, :email)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
