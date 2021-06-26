class ReviewsController < ApplicationController
    
    def create
        Review.create(review_params)
        redirect_to "/cameras/#{review.camera.id}"
    end
    
    def destroy
        @camera = Camera.find(params[:camera_id])
        review = @camera.reviews.find(params[:id])
        review.destroy 
        redirect_to "/cameras/#{review.post.id}"
    end
    
    private
    def review_params
        params.require(:review).permit(:total_rate, :comfort_rate, :imgquality_rate, :cost_rate, :content).merge(user_id: current_user.id, camera_id: params[:camera_id])
    end
    
end
