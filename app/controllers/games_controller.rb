class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    @game.token = Devise.friendly_token.first(6) 
    @game.save
    redirect_to game_path(@game)
  end

  def game_params
      params.require(:game).permit(:movie, :watch_type, :genre, :year,
                                  :director, :language, :language_subtitle, 
                                  :country, :vote_average)
  end



end
