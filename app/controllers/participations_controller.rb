class ParticipationsController < ApplicationController

  def new
    @participation = Participation.new
  end

  def create
    @participation = Participation.new
    @participation.user = current_user
    @game = Game.find_by(token: params[:token])
    @participation.game = @game

    if @participation.save!
      redirect_to game_path(@game)
    else
      render :new
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
    @genres = ["comédie", "SF", "Horreur", "Guerre"]
    @game = Game.find(params[:game_id])
    @participation = Participation.find(params[:id])
    @fields = []
    @fields << "watch_type" if @game.watch_type
    @fields << "genre" if @game.genre 
    @fields << "year" if @game.year 
    @fields << "director" if @game.director
    @fields << "language" if @game.language 
    @fields << "language_subtitle" if @game.language_subtitle
    @fields << "location" if @game.location  
    @fields << "vote_average" if @game.vote_average
    
  end

private

  def participation_params
    params.require(:participation).permit(:watch_type, :genre, :year, :director, :language, :language_subtitle, :location, :vote_average)
  end
end
