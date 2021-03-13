class GamesController < ApplicationController
  require "moviedb/moviedb"

  def show
    @game = Game.find(params[:id])
    @user = current_user
    @participations = Participation.where(game_id: @game)
    @participation = @participations.find_by(user_id: current_user)
    @movie = @game.movie
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
    @genre_choices =  @participations.includes(:genre).pluck('genres.tmdb_id').uniq
    @runtime_choices = @participations.pluck(:runtime).uniq
    @original_language_choices = @participations.includes(:original_language).pluck('original_languages.iso_639_1').uniq
    @watch_providers_choices = @game.providers.pluck(:tmdb_id)
    # movie = requete a l'api avec le module (! require)
    moviesearch = Moviedb::Discover.search({year: @year_choices,
                                      vote_average: @vote_average_choices,
                                      genre_id: @genre_choices,
                                      runtime: @runtime_choices,
                                      original_language_id: @original_language_choices,
                                      watch_providers: @watch_providers_choices
                                    })
    # movie.create
    movie = Movie.create!(title: moviesearch["title"],
                          overview: moviesearch["overview"],
                          original_language_id: OriginalLanguage.find_by(iso_639_1: moviesearch["original_language"]).id,
                          vote_average: moviesearch["vote_average"],
                          game_id: @game.id)
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
