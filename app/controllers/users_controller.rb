class UsersController < ApplicationController
    
    before_action :set_user, only: [:edit, :update]
    
    def show
        #@posts = current_user.posts
        #@nickname = current_user.nickname
        #↓このままだとcurrent_userが他のユーザーのマイページをクリックしても、自分のマイページに飛んでしまう
        
        @user = User.find(params[:id])
        @posts = @user.posts.page(params[:page]).per(16).order('created_at DESC')
        @nickname = @user.nickname
    end
    
    def edit
    end
    
    def update
        current_user.update(user_params)
    end
    
    def followings
        @followings = @user.following_users
    end
    
    def followers
        @followers = @user.follower_users
    end
    
    private
    def user_params
        params.require(:user).permit(:nickname, :email, :password)
    end
    
end
