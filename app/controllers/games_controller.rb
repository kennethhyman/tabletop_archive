class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
	end

	def create
		@game = Game.new(params[:game])
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
	end
end
