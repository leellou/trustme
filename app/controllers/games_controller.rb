class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    @user = current_user
    #@game_participation = @user.participations
    
    @participations = Participation.where(game_id: @game)
    @participation = @participations.find_by(user_id: current_user)
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
      params.require(:game).permit(:genre, :year, :provider,
                                  :original_language, :vote_average,
                                    :token, :user)
  end
end
