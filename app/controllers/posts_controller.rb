class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def new
        @post = current_user.posts.build
    end

    def index
        @post = Post.all.order("created_at DESC")
    end

    def create
        @post = current_user.posts.build(post_params)
        #@post.user = current_user
        @post.save

        if @post.save
            #format.html { redirect_to 'index', notice: 'Post was successfully created.' }
            redirect_to root_url
          else
            #format.html { render :new }
            render :new
          end
    end

    def show
    end

    private

    def post_params
        params.require(:post).permit(:body, :user_id)
      end
end
