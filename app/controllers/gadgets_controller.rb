class GadgetsController < ApplicationController
    skip_before_action :authenticate_user!, :raise => false
    before_action :set_gadget, only: [:show]
    http_basic_authenticate_with :name => ENV['NEW_USERNAME'], :password => ENV['NEW_PASSWORD'], only: :new


    def index
        @gadgets = Gadget.all
    end

    def update_points
      @gadget = Sneaker.find(params[:id])
      @user = current_user
      if @user.winpoints ==  @gadget.points || @user.winpoints >=  @gadget.points
        @user.winpoints -=  @gadget.points 
     
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
      @gadget = Gadget.find(params[:id])
      if @gadget.stock == 0
        redirect_to gadgets_path(@gadget)
      end
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