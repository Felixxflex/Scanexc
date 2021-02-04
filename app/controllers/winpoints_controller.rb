class WinpointsController < ApplicationController
    before_action :set_user
  
  def user_params
    params.permit(:username, :email, :full_name, :photo, :winpoints)
  end
  
  def update
    @user.winpoints += 10
    if @user.save
      redirect_to usersshow_path(@user), notice: 'Points Updated.'
    else
      render :edit
    end
  end
  
  private
  
    def set_user
      @user = current_user
    end
  
  end