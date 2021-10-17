class LenzsController < ApplicationController
    
    before_action :move_to_index, except: [:index, :show, :search]
    
    def index
        @lenzs = Lenz.all.page(params[:page]).per(40).order('created_at DESC')
    end
    
    def new
        @lenz = Lenz.new
    end
    
    def create
        Lenz.create(lenz_params)
    end
    
    def destroy
        lenz = Lenz.find(params[:id])
        lenz.destroy
    end
    
    def edit
        @lenz = Lenz.find(params[:id])
    end
    
    def update
        lenz = Lenz.find(params[:id])
        lenz.update(lenz_params)
    end
    
    def show
        @lenz = Lenz.find(params[:id])
        @revieww = Revieww.new
        @reviewws = @lenz.reviewws.includes(:user).page(params[:page]).per(5).order('created_at DESC')
        @posts = Post.where(lens: @lenz.lens_name).includes(:user).page(params[:page]).per(8).order('created_at DESC')
    end
    
    private
    def lenz_params
        params.require(:lenz).permit(:image, :lens_maker, :lens_name, :sensor_size, :f_number, :focal_length, :weight)
    end
    
    def move_to_index
        unless current_user&.admin
            redirect_to action: :index
        end
    end
    
end
