class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def new
        @post = Post.new
    end

    def index
        @post = Post.all.order("created_at DESC")
        @post = Post.new
    end

    def create
        @post = Post.new

        if @post.save
            redirect_to 'index'
          else
            render :new
          end
    end

    def show
    end
end
