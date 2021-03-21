class SneakersController < ApplicationController
    skip_before_action :authenticate_user!, :raise => false
    before_action :set_sneaker, only: [:show]
    http_basic_authenticate_with :name => ENV['NEW_USERNAME'], :password => ENV['NEW_PASSWORD'], only: :new
  

    def index
        @sneakers = Sneaker.all
    end

  
    def update_points
      @sneaker = Sneaker.find(params[:id])
      @user = current_user
      if @user.winpoints == @sneaker.points || @user.winpoints >= @sneaker.points
        @user.winpoints -= @sneaker.points 
     
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
      @sneaker = Sneaker.find(params[:id])
      if @sneaker.stock == 0
        redirect_to sneakers_path(@sneaker)
      end
    end
  
    def new
      @sneaker = Sneaker.new()
    end
  
    
    
    def create
    
    @sneaker = Sneaker.new(sneaker_params)
      
      if @sneaker.save
        redirect_to sneaker_path(@sneaker)
      else
        render :new
    end
end

def destroy
  @sneaker.destroy
  redirect_to sneakers_path
end



  def edit
  end

  def update
    @sneaker.update(sneaker_params)
    redirect_to sneaker_path(@sneaker)
  end

private

def set_sneaker
@sneaker = Sneaker.find(params[:id])   
end

def sneaker_params
params.require(:sneaker).permit(:title, :points, :description, :photo)
end

end