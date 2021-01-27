class SneakersController < ApplicationController
    skip_before_action :authenticate_user!, :raise => false
    before_action :set_sneaker, only: [:show]
    http_basic_authenticate_with :name => 'FelixxFel', :password => 'Jordanshacker1710.shivflex.2020', only: :new
  

    def index
        @sneakers = Sneaker.all
    end

  
     
    def show
      
        
        
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