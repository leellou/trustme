class GamesController < ApplicationController
  require "moviedb/moviedb"

  def show
    @game = Game.find(params[:id])
    @user = current_user
    @participations = Participation.where(game_id: @game)
    @participation = @participations.find_by(user_id: current_user)
    # @movie = game.movie if game.movie
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
    # recup tout les games participations choice / les stocker
    @game = Game.find(params[:id])
    @participations = Participation.where(game_id: @game)
    # uniq reduire les choix
    @year_choices = @participations.pluck(:year).uniq
    @vote_average_choices = @participations.pluck(:vote_average).uniq
    @genre_choices = @participations.pluck(:genre_id).uniq
    @runtime_choice = @participations.pluck(:runtime).uniq
    @original_language_choices = @participations.pluck(:original_language_id).uniq
    # movie = requete a l'api avec le module (! require)
    movie = Moviedb::Discover.search({year: @year_choice,
                                      vote_average: @vote_average_choices,
                                      genre_id: @genre_choices,
                                      runtime: @runtime_choice,
                                      original_language_id: @original_language_choice,
                                      watch_providers: @game.providers.pluck(:tmdb_id)
                                    })
    # movie.create
    movie = Movie.create!(title: movie["title"],
                          overview: movie["overview"],
                          original_language_id: OriginalLanguage.find_by(iso_639_1: movie["original_language"]).id,
                          vote_average: movie["vote_average"],
                          genre_id: Genre.find_by(tmdb_id: movie["genre_ids"]).id)
    # redirect to game#show
    redirect_to game_path(@game)
  end

  private

  def game_params
      params.require(:game).permit(:genre, :year, :provider,
                                    :original_language, :vote_average,
                                    :token, :user)
  end
end
