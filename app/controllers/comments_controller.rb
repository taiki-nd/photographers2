class CommentsController < ApplicationController
    
    def create
        comment = Comment.create(comment_params)
        redirect_to "/posts/#{comment.post.id}"
    end
    
    def destroy
        
    end
        @post = Post.find(params[:id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy 
    private
    def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
    end
    
end
