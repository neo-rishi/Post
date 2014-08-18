class CommentsController < ApplicationController

	def new
    	@comment = Comment.new
		
	end

	def create
		@comment = Comment
		@post = Post.find_by(id: params[:post_id])
		@comment = @post.comments.build(comment_params)
	    if @comment.save
	      redirect_to post_path(@post)
	    else
	      render :show
	    end 
	end

	def index
		redirect_to new_post_path
	end
	private
	def comment_params
      params.require(:comment).permit(:comment)
    end

end
