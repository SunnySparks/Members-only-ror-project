class PostsController < ApplicationController
    before_action :authenticate_user!, except [:index]

    def new
        @post = Post.new
    end

    def create
        @post = Post.new
    end

    def index
        @post = Post.new
    end
end
