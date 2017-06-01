class ScorecardsController < ApplicationController
	def index
	end

	def show
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def scorecard_params
		params.require(:scorecard).permit(:title, :starred)
	end
end
