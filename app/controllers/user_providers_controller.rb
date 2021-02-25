class UserProvidersController < ApplicationController

  # GET /users/:user_id/user_providers/new
  def new
    @user_provider = UserProvider.new
  end

  # POST /users/:user_id/user_providers
  def create
    @user_provider = UserProvider.new(user_provider_params)
    @user_provider.user = current_user

    if @user_provider.save!
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def user_provider_params
    params.require(:user_provider).permit(:user_id, :provider_id)
  end
end
