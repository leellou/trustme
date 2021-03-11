class GamesController < ApplicationController
  #require ici
  def show
    @game = Game.find(params[:id])
    @user = current_user
    #@game_participation = @user.participations

    @participations = Participation.where(game_id: @game)
    @participation = @participations.find_by(user_id: current_user)
    # if game.movie
      # @movie = game.movie
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

  def find_movie
    raise
    # recup tout les games participations choice / les stocker
    # uniq reduire les choix
    # movie = requete a l'api avec le module (! require)
    # movie.create
    # redirect to game#show

  end

  def game_params
      params.require(:game).permit(:movie, :watch_type, :genre, :year,
                                  :director, :language, :language_subtitle,
                                  :location, :vote_average, :token, :user)
  end
end
