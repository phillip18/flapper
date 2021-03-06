class CommentsController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		comment = post.comment.create(comment_params)
		respond_with post, comment		
	end

	def upvote
		post = Post.find(params[:post_id])
		comment = post.comment.find(params[:post_id])
		comment.increment!(:upvote)
		respond_with post, comment
	end

	private
	def comment_params
		params.requite(:comment).permit(:body)
	end
end
