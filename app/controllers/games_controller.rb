class GamesController < ApplicationController
  def show
    @game = Game.new
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    @game.type = false
    @game.genre = false 
    @game.year = false 
    @game.director = false 
    @game.language = false 
    @gam.language_subtitle = false 
    @game.country = false 
    @game.vote_average = false 
    @game.token = false 

  end

  def game_params
      params.require(:game).permit(:user, :movie, :type, :genre, :year,
                                  :director, :language, :language_subtitle, 
                                  :country, :vote_average, :token)
  end



end
