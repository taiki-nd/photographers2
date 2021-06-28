class CamerasController < ApplicationController
    
    def index
        @cameras = Camera.all
    end
    
    def new
        @camera = Camera.new
    end
    
    def create
        Camera.create(camera_paramas)
    end
    
    def destroy
        camera = Camera.find(params[:id])
        camera.destroy
    end
    
    def edit
        @camera = Camera.find(params[:id])
    end
    
    def update
        camera = Camera.find(params[:id])
        camera.update(camera_paramas)
    end
    
    def show
        @camera = Camera.find(params[:id])
        @review = Review.new
        @reviews = @camera.reviews.includes(:user)
        post = Post.find(params[:id])
        @cam = Camera.find_by(camera_name: post.camera)
        @posts = Post.where(camera: @cam.camera_name).includes(:user)
    end
    
    private
    def camera_paramas
        params.require(:camera).permit(:image, :camera_maker, :camera_name, :sensor_size, :pixels, :iso, :weight, :shooting_speed).merge(user_id: current_user.id)
    end
    
end
