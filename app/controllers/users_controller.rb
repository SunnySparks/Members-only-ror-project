class UsersController < ApplicationController
    before_action :authenticate_user!, except: [:index]
  
    def index
      @users = User.all
      @user = current_user
      @username = current_user.username
    end
  
    def show
        @user = User.find(session[:user_id])
        @posts = @user.posts
    end
  
    def new
      @user = User.new
    end
  
    def edit
    end

    private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
        params.require(user).permit(:name, :username, :user_id)
    end
end