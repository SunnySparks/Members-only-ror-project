class UsersController < ApplicationController
    #before_action :authenticate_user!, except: [:index]
    #before_action :set_post, only: %i[ show edit update destroy ]
  
    # GET /posts or /posts.json
    def index
      @users = User.all
      @user = current_user
      @username = current_user.username
    end
  
    # GET /posts/1 or /posts/1.json
    def show
        @user = User.find(session[:user_id])
        @posts = @user.posts
    end
  
    # GET /posts/new
    def new
      @user = User.new
    end
  
    # GET /posts/1/edit
    def edit
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
        params.require(user).permit(:name, :username, :user_id)
    end
end