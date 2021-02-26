class StoresController < ApplicationController
    def index
        @stores = Store.all
    end
  

     
    def show
      
    end
  
    def new
      @store = Store.new()
    end
  
    
    
    def create
    
    @store = Store.new(store_params)
      
      if @store.save
        redirect_to store_path(@store)
      else
        render :new
    end
  end
  
  def destroy
  @store.destroy
  redirect_to store_path
  end
  
  
  
  def edit
  end
  
  def update
    
  end
    private

    def set_gadget
    @store = Gadget.find(params[:id])   
    end
    
    def gadget_params
    params.require(:store).permit(:business_address, :business_title, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_delivery, :business_number, :business_card, :total_scans, :business_image, :business_opening)
    end
end