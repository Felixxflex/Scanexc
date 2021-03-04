class WinpointsController < ApplicationController
  before_action :set_user

  
  def user_params
    params.permit(:username, :email, :full_name, :photo, :winpoints)
  end
  
  def update_points
    @sport = Sport.find(params[:id])
    @user = current_user
    if @user.winpoints == @sport.winpoints || @user.winpoints >= @sport.winpoints
      @user.winpoints -= @sport.winpoints
      if @user.save
        redirect_to usersshow_path(@user)
      else
        render :edit
      end
    else
      redirect_to usersshow_path(@user), notice: 'Scan more bro'
    end
  end
  
  def update
    @user.winpoints += 10
    if @user.save
      redirect_to usersnewpoints_path(@user)
    else
      render :edit
    end
  end
  private
  
  
  def set_user
    @user = current_user
  end

end
