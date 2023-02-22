class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    
    def index
        @posts = Post.all
        @user_signed_in = user_signed_in? 
    end

    def new
        @post = Post.new
        @user = current_user
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :body, :user_id)
    end
end
