class SportsController < ApplicationController
  skip_before_action :authenticate_user!, :raise => false
  before_action :set_sport, only: [:show]
  http_basic_authenticate_with :name => 'FelixxFel', :password => 'Jordanshacker1710.shivflex.2020', only: :new


  def index
      @sports = Sport.all
  end

  def update_points
    @sport = Sport.find(params[:id])
    @user = current_user
    if @user.winpoints == @sport.points || @user.winpoints >= @sport.points
      @user.winpoints -= @sport.points 
   
      if @user.save
        redirect_to congratulations_path(@user) 
      else
        render :edit
      end
    else
      redirect_to notenoughpoints_path(@user)
    end
  end
   
  def show
    @sport = Sport.find(params[:id])
    if @sport.stock == 0
      redirect_to sports_path(@sport)
    end
  end

  def new
    @sport = Sport.new()
  end

  
  
  def create
  
  @sport = Sport.new(sport_params)
    
    if @sport.save
      redirect_to sport_path(@sport)
    else
      render :new
  end
end

def destroy
@sport.destroy
redirect_to sports_path
end



def edit
end

def update
  
end


private

def set_sport
@sport = Sport.find(params[:id])   
end

def sport_params
params.require(:sport).permit(:title, :winpoints, :description, :photo)
end

end
