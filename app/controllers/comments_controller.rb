class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@user = User.find(params[:user_id])
		@user.comments.create(comment_params.merge(user: current_user))
		redirect_to user_path(@user)
	end

	private

	def comments_params
		params.require(:comment).permit(:message, :rating)
	end
end
