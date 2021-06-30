class ReviewwsController < ApplicationController
    
    def create
        revieww = Revieww.create(review_params)
        redirect_to "/lenzs/#{revieww.lenz.id}"
    end
    
    def destroy
        @lenz = Lenz.find(params[:lenz_id])
        revieww = @lenz.reviewws.find(params[:id])
        revieww.destroy 
        redirect_to "/lenzs/#{revieww.lenz.id}"
    end
    
    def edit
        @lenz = Lenz.find(params[:lenz_id])
        @revieww = @lenz.reviewws.find(params[:id])
    end
    
    def update
        @lenz = Lenz.find(params[:lenz_id])
        revieww = @lenz.reviewws.find(params[:id])
        revieww.update(review_params)
        redirect_to "/lenzs/#{revieww.lenz.id}"
    end
    
    private
    def review_params
        params.require(:revieww).permit(:total_rate, :comfort_rate, :imgquality_rate, :cost_rate, :content).merge(user_id: current_user.id, lenz_id: params[:lenz_id])
    end
    
end
