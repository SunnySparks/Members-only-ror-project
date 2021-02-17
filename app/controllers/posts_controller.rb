class PostsController < ApplicationController
    before_action :authenticate_post!, except: [:index]

    def new
        @post = Post.new
    end

    def create
        @post = Post.new
    end

    def index
        @post = Post.new

        if @post.save
            redirect_to root_path
          else
            render :new
          end
    end

    def show
    end
end
