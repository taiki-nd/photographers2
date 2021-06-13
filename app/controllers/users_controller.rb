class UsersController < ApplicationController
    def show
        #@posts = current_user.posts
        #@nickname = current_user.nickname
        #↓このままだとcurrent_userが他のユーザーのマイページをクリックしても、自分のマイページに飛んでしまう
        
        user = User.find(params[:id])
        @posts = user.posts
        @nickname = user.nickname
    end
end
