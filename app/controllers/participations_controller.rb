class ParticipationsController < ApplicationController

  def new
    @participation = Participation.new
  end

  def create
    @participation = Participation.new(participation_params)
    @participation.user = current_user

    if @participation.save
      redirect_to game_path(game)
    else
      render :new
    end
  end
end
