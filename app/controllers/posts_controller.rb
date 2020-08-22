class PostsController < ApplicationController
    before_action :require_login, except: [:index, :show]

    include PostsHelper
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(posting_params)
        @post.save
        flash.notice = "Post '#{@post.title}' Created!'"
        #I would love to make the flash an alert rather than text that stays on the screen.
        redirect_to @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy 
        flash.notice = "Post '#{@post.title}' Deleted!"
        redirect_to posts_path
    end
end
