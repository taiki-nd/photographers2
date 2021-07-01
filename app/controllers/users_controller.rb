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
        unless @user == current_user
            redirect_to user_path(@user)
        end
    end
    
    def update
        if current_user.update(user_params)
            redirect_to user_path(current_user)
        else
            redirect_to edit_user_path(current_user)
        end
    end
    
    def followings
        @followings = @user.following_users
    end
    
    def followers
        @followers = @user.follower_users
    end
    
    private
    def set_user
        @user = User.find(params[:id])
    end
    
end
