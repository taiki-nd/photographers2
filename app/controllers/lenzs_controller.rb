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
        @reviewws = @lenz.reviewws.includes(:user)
        post = Post.find(params[:id])
        @len = Lenz.find_by(lens_name: post.lens)
        @posts = Post.where(lens: @len.lens_name).includes(:user)
    end
    
    private
    def lenz_params
        params.require(:lenz).permit(:image, :lens_maker, :lens_name, :sensor_size, :f_number, :focal_length, :weight).merge(user_id: current_user.id)
    end
    
end
