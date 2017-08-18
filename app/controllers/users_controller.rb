class UsersController < ApplicationController
    def view_user_info
        @user=User.find(params[:user_id])
        @posts= Post.where(:user_id => params[:user_id])
    end
end
