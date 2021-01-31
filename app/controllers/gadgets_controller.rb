class GadgetsController < ApplicationController
    skip_before_action :authenticate_user!, :raise => false
    before_action :set_gadget, only: [:show]
    http_basic_authenticate_with :name => ENV['NEW_USERNAME'], :password => ENV['NEW_PASSWORD'], only: :new


    def index
        @gadgets = Gadget.all
    end

  
     
    def show
      
        
        
    end
  
    def new
      @gadget = Gadget.new()
    end
  
    
    
    def create
    
    @gadget = Gadget.new(gadget_params)
      
      if @gadget.save
        redirect_to gadget_path(@gadget)
      else
        render :new
    end
end

def destroy
  @gadget.destroy
  redirect_to gadgets_path
end



  def edit
  end

  def update
    @gadget.update(gadget_params)
    redirect_to gadget_path(@gadget)
  end

private

def set_gadget
@gadget = Gadget.find(params[:id])   
end

def gadget_params
params.require(:gadget).permit(:title, :points, :description, :photo)
end

end