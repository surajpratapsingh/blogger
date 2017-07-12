class Api::V1::Article1sController < ApplicationController
	def index
		@article1s=Article1.preload(:comments)
		render json: @article1s
	end
end