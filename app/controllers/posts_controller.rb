class PostsController < ApplicationController
    
    before_action :move_to_index, except: [:index, :show]
    
    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def create
        Post.create(post_params) 
    end
    
    def destroy
        post = Post.find(params[:id])
        post.destroy 
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        post = Post.find(params[:id])
        post.update (post_params)
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    private
    def post_params
        params.require(:post).permit(:name, :camera, :lens, :place, :image, :text) 
    end
    
    def move_to_index
        unless user_sind_in?
            redirect_to action: :index
        end 
    end
    
end
