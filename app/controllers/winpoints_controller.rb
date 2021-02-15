class WinpointsController < ApplicationController
  before_action :set_user

  
  def user_params
    params.permit(:username, :email, :full_name, :photo, :winpoints)
  end
  
  # def update_points
  #   @sport = Sport.find(params[:id])
  #   if @user.winpoints == @sport.winpoints
  #     return @user.winpoints -= @sport.winpoints
  #   elsif @user.winpoints >= @sport.winpoints 
  #     return @user.winpoints -= @sport.winpoints
  #   else
  #     return redirect_to usersshow_path(@user), notice: 'Scan more bro'
  #   end 
  # end
  
  def update
    @user.winpoints += 10
    if @user.save
      redirect_to usersshow_path(@user)
    else
      render :edit
    end
  end
  private
  
  
  def set_user
    @user = current_user
  end

end
