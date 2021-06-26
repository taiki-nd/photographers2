class ReviewwsController < ApplicationController
    
    def create
        review = Review.create(review_params)
        redirect_to "/lenzs/#{review.lenz.id}"
    end
    
    def destroy
        @lenz = Lenz.find(params[:lenz_id])
        review = @lenz.reviews.find(params[:id])
        review.destroy 
        redirect_to "/lenzs/#{review.lenz.id}"
    end
    
    private
    def review_params
        params.require(:review).permit(:total_rate, :comfort_rate, :imgquality_rate, :cost_rate, :content).merge(user_id: current_user.id, lenz_id: params[:lenz_id])
    end
    
end
