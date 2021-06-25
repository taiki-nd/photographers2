class LenzsController < ApplicationController
    
    def index
        @lenzs = Lenz.all
    end
    
    def new
        @lenz = Lenz.new
    end
    
    def create
        Lenz.create(lenz_params)
    end
    
    def edit
        @lenz = Lenz.find(params[:id])
    end
    
    def update
        lenz = Lenz.find(params[:id])
        lenz.update(lenz_params)
    end
    
    private
    def camera_paramas
        params.require(:lenz).permit(:image, :lens_maker, :lens_name, :sensor_size, :f_number, :focal_length, :weight)
    end
    
end
