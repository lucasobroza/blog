
class PostsController < ApplicationController

	http_basic_authenticate_with name: "lucas", password: "senha", except: [:index, :show]
  before_action :post_params, :only=> [:create, :update]

  def index
  	  @posts = Post.all
	end


	def show
    @post = Post.find(params[:id])
  end

	def new
  	  @post = Post.new
	end
 
	def create  
    @post = Post.new(@var)

	  if @post.save
  	 redirect_to posts_path
	  else
     render :action => 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
	end

	def update
 	  @post = Post.find(params[:id])
 
  	  if @post.update(@var)
        redirect_to posts_path
  	  else
    	render 'edit'
      end 
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
 
    redirect_to posts_path
  end  

	private
		def post_params
			@var = params[:post].permit(:title, :text)
		end	
end



