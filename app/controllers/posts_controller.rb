class PostsController < ApplicationController
    
    before_action :set_post, only: [:edit, :show]
    before_action :move_to_index, except: [:index, :show, :search]
    before_action :set_slect, only: [:new, :edit]
    
    def index
        #@posts = Post.all
        @posts = Post.includes(:user).page(params[:page]).per(40).order('created_at DESC')
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
    end
    
    def update
        post = Post.find(params[:id])
        post.update (post_params)
    end
    
    def show
        @comment = Comment.new
        @comments = @post.comments.includes(:user).page(params[:page]).per(20).order('created_at DESC')
        @camera = Camera.find_by(camera_name: @post.camera)
        @lenz = Lenz.find_by(lens_name: @post.lens)
    end
    
    def search
        @posts = Post.search(params[:keyword]).includes(:user).page(params[:page]).per(40).order('created_at DESC')
    end
    
    def dynamic_select_category
        @category = Slectbox.find(params[:category_id])
    end
    
    private
    def post_params
        params.require(:post).permit(:camera, :lens, :place, :image, :text, :camera_maker, :lens_maker).merge(user_id: current_user.id) 
    end
    
    def set_post
         @post = Post.find(params[:id])
    end
    
    def move_to_index
        unless user_signed_in?
            redirect_to action: :index
        end 
    end
    
    def set_slect
        @parent_slect = Slectbox.roots
        @default_child_slect = @parent_slect.first.children
        @default_grandchild_slect = @parent_slect.first.indirects
    end
    
end
