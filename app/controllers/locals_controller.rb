class LocalsController < ApplicationController
  def index
    @locals = Local.all
    # args = {}
    # args[:business_category] = params[:business_category] if params[:business_category].present?
    # @locals = Local.search "*", where: args, aggs: {business_category: {}}
  end
  

     
    def show
      
    end
  
    def new
      @local = Local.new()
    end
  
    
    
    def create
    
    @local = Local.new(store_params)
      
      if @local.save
        redirect_to local_path(@local)
      else
        render :new
    end
  end
  
  def destroy
  @local.destroy
  redirect_to local_path
  end
  
  
  
  def edit
  end
  
  def update
    
  end
    private

def set_gadget
@local = Gadget.find(params[:id])   
end

def gadget_params
params.require(:local).permit(:business_address, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_number, :business_card, :total_scans, :business_image, :business_opening, :business_category)
end
end