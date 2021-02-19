class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def new
        @post = current_user.posts.build
    end

    def index
        @post = Post.all.order("created_at DESC")
        @post = Post.new
    end

    def create
        @post = current_user.posts.build

        if @post.save
            #format.html { redirect_to 'index', notice: 'Post was successfully created.' }
            redirect_to 'index'
          else
            #format.html { render :new }
            render :new
          end
    end

    def show
    end
end
