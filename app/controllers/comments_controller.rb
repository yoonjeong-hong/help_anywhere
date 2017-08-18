class CommentsController < ApplicationController

    def create
        comment =Comment.new
        comment.content = params[:input_comment]
        comment.post_id = params[:id]
        comment.user = current_user
        comment.save
        redirect_to "/posts/#{params[:id]}"

    end

    def destroy
        Comment.destroy(params[:comment_id])
        redirect_to "/posts/#{params[:id]}"
    end
  
end