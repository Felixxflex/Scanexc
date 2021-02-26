class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end
  

     
    def show
      
    end
  
    def new
      @restaurant = Restaurant.new()
    end
  
    
    
    def create
    
    @restaurant = Restaurant.new(restaurant_params)
      
      if @restaurant.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
    end
  end
  
  def destroy
  @restaurant.destroy
  redirect_to restaurant_path
  end
  
  
  
  def edit
  end
  
  def update
    
  end
    private

def set_gadget
@restaurant = Gadget.find(params[:id])   
end

def gadget_params
params.require(:restaurant).permit(:business_address, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_delivery_service, :business_delivery, :business_number, :business_card, :total_scans, :business_image, :business_opening)
end
end