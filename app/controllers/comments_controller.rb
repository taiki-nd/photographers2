class CommentsController < ApplicationController
    
    def create
        comment = Comment.create(comment_params)
        redirect_to "/posts/#{comment.post.id}"
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        comment = @post.comments.find(params[:id])
        comment.destroy 
        redirect_to "/posts/#{comment.post.id}"
    end
    
    def edit
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
    end
    
    def update
        post = Post.find(params[:post_id])
        comment = post.comments.find(params[:id])
        comment.update(comment_params)
        redirect_to "/posts/#{comment.post.id}"
    end
        
    private
    def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
    end
    
end
