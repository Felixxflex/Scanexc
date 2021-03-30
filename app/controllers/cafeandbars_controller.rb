class CafeandbarsController < ApplicationController
  def index
    @cafeandbars = Cafeandbar.all
    # args = {}
    # args[:business_category] = params[:business_category] if params[:business_category].present?
    # @cafeandbars = Cafeandbar.search "*", where: args, aggs: {business_category: {}}
  end
  

     
    def show
      
    end
  
    def new
      @cafeandbar = Cafeandbar.new()
    end
  
    
    
    def create
    
    @cafeandbar = Cafeandbar.new(store_params)
      
      if @cafeandbar.save
        redirect_to cafeandbar_path(@cafeandbar)
      else
        render :new
    end
  end
  
  def destroy
  @cafeandbar.destroy
  redirect_to cafeandbar_path
  end
  
  
  
  def edit
  end
  
  def update
    
  end
    private

def set_gadget
@cafeandbar = Gadget.find(params[:id])   
end

def gadget_params
params.require(:cafeandbar).permit(:business_address, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_number, :business_card, :total_scans, :business_image, :business_opening, :business_category)
end
end