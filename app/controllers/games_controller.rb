class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    byebug
    @game.user = current_user
    @game.token = Devise.friendly_token.first(6) 
    @game.save
    redirect_to root_path
  end

  def game_params
      params.require(:game).permit(:user, :movie, :type, :genre, :year,
                                  :director, :language, :language_subtitle, 
                                  :country, :vote_average, :token)
  end



end
