class CommentsController < ApplicationController
	def create
		@comment =Comment.new(comment_params)
		@comment.article1_id = params[:article1_id]
		@comment.save
		redirect_to article1_path(@comment.article1)
	end
	def comment_params
		params.require(:comment).permit(:author_name, :body)
	end
end
