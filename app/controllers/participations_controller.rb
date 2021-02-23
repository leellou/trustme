class ParticipationsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def new
    @participation = Participation.new
  end

  def create
    @participation = Participation.new(participation_params)
    @participation.user = current_user
    @game = Game.find_by(token: params[:token])
    @participation.game = @game

    if @participation.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:type, :genre, :year, :director, :language, :language_subtitle, :country, :vote_average)
  end
end
