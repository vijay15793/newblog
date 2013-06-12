class CommentsController < ApplicationController
  load_and_authorize_resource :message => 'Not authorized as an user.'
  def create
    #@user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    #@post.user_id = current_user.id
    #@post.comment.user = current_user
    @comment = @post.comments.new(params[:comment])
    @comment.user_id = current_user.id
    @comment.save
    redirect_to post_path(@post)
  end
  
  def destroy
    
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  
end
