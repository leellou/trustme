class ParticipationsController < ApplicationController

  def new
    @participation = Participation.new
  end

  def create
    @game = Game.find_by(token: params[:token])
    if current_user.participations.exists?(game: @game.id)
      redirect_to game_path(@game), alert: "already join party"
    else
      @participation = Participation.new
      @participation.user = current_user
      @participation.game = @game
      if @participation.save!
        redirect_to game_path(@game)
      else
        render :new
      end
    end
  end

  # PATCH /games/:game_id/participations/:id
  def update
    @game = Game.find(params[:game_id])
  end

  # GET /games/:game_id/participations/:id/edit
  def edit
    #@game_players = []
    #@game_players << current_user
    @genres = ["comédie", "SF", "Horreur", "Guerre", "policier", "aventure", "historique"]
    @original_languages = ["Français", "Anglais", "Allemand", "Russe", "Chinois", "Espagnol"]
    @game = Game.find(params[:game_id])
    @participation = Participation.find(params[:id])
    @fields = []
    @fields << "genre" if @game.genre
    @fields << "year" if @game.year
    @fields << "original_language" if @game.original_language
    @fields << "runtime" if @game.runtime
    @fields << "vote_average" if @game.vote_average

  end

private

  def participation_params
    params.require(:participation).permit(:genre, :year, :original_language, :runtime, :vote_average)
  end
end
