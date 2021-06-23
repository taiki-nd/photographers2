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
    
    private
    def camera_paramas
        params.require(:camera).permit(:image, :camera_maker, :camera_name, :sensor_size, :pixels, :iso, :weight, :shooting_speed)
    end
    
end
