class TechnologiesController < ApplicationController
    skip_before_action :authenticate_user!, :raise => false
    before_action :set_technologie, only: [:show]
    http_basic_authenticate_with :name => 'FelixxFel', :password => 'Jordanshacker1710.shivflex.2020', only: :new
  
    
    def index
        @technologies = Technologie.all 
    end

  
    
    def show
      
        
        
    end
  
    def new
      @technologie = Technologie.new()
    end
  
    
    
    def create
    
    @technologies = Technologie.new(technologie_params)
      
      if @technologies.save
        redirect_to technologies_path(@technologie)
      else
        render :new
    end
end

def destroy
  @technologie.destroy
  redirect_to technologies_path
end



  def edit
  end

  def update
    @technologie.update(technologie_params)
    redirect_to technologie_path(@technologie)
  end

private

def set_technologie
@technologie = Technologie.find(params[:id])   
end

def technologie_params
params.require(:technologie).permit(:title, :points, :description, :photo)
end

end