class PostsController < ApplicationController
  load_and_authorize_resource :except=> [:index,:show],:message => 'Not authorized as an author.'
  def index
    
    @posts = Post.all
  end
  
  def new
     
     @post = Post.new
      
     
  
  end
  
  def create
    @post = Post.new(params[:post])
    
    @post.user_id = current_user.id
    if @post.save
      redirect_to(@post, :notice => 'Post was successfully created.') 
      
    else
      render :action => "new"
   
    end
  end
  
  def show
  @post = Post.find(params[:id])
 
  end

  def edit
    @post = Post.find(params[:id])
    
    
  end
  
  def update
    
    @post = Post.find(params[:id])
    
    
  
    if @post.update_attributes(params[:post])
      redirect_to(@post,:notice => 'Post was successfully updated.') 
    else
      
      render :action => "edit" ,:notice => 'Post was not created.'
    end
  end

def destroy
    @post = Post.find(params[:id])
   
   @post.destroy
   redirect_to posts_url
  end

end
