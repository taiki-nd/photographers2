class CamerasController < ApplicationController
    
    before_action :move_to_index, except: [:index, :show, :search]
    
    def index
        @cameras = Camera.all.page(params[:page]).per(40).order('created_at DESC')
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
        @reviews = @camera.reviews.includes(:user).includes(:user).page(params[:page]).per(5).order('created_at DESC')
        @posts = Post.where(camera: @camera.camera_name).includes(:user).page(params[:page]).per(8).order('created_at DESC')
    end
    
    private
    def camera_paramas
        params.require(:camera).permit(:image, :camera_maker, :camera_name, :sensor_size, :pixels, :iso, :weight, :shooting_speed).merge(user_id: current_user.id)
    end
    
    def move_to_index
        unless current_user&.admin
            redirect_to action: :index
        end
    end
    
end
