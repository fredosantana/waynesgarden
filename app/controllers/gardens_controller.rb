class GardensController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@comment = Comment.new
	end
	
	def flowers
	end

	def herbs
	end

	def peppers
	end

	def tomatoes
	end
end
