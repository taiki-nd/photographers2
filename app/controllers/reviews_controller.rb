class ReviewsController < ApplicationController
    
    def create
        review = Review.create(cam_review_params)
        redirect_to "/cameras/#{review.camera.id}"
    end
    
    def destroy
        @camera = Camera.find(params[:camera_id])
        review = @camera.reviews.find(params[:id])
        review.destroy 
        redirect_to "/cameras/#{review.camera.id}"
    end
    
    def edit
        @camera = Camera.find(params[:camera_id])
        @review = @camera.reviews.find(params[:id])
    end
    
    def update
        @camera = Camera.find(params[:camera_id])
        review = @camera.reviews.find(params[:id])
        review.update(cam_review_params)
        redirect_to "/cameras/#{review.camera.id}"
    end
    
    private
    def cam_review_params
        params.require(:review).permit(:total_rate, :comfort_rate, :imgquality_rate, :cost_rate, :content).merge(user_id: current_user.id, camera_id: params[:camera_id])
    end
    
end
