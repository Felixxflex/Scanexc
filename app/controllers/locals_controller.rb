class LocalsController < ApplicationController
  def index
    if params[:search_by_business_title_and_business_description].nil? || params[:search_by_business_title_and_business_description].empty?
      @locals = Local.all.order(name: :desc)
    else
      @locals = Local.search_by_title_and_location(params[:search_by_business_title_and_business_description]).order(name: :desc)
    end
      @q = Local.ransack(params[:q])
      @locals = @q.result
  end
  

     
    def show
      
    end
  
    def new
      @local = Local.new()
    end
  
    
    
    def create
    
    @local = Local.new(local_params)
      
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

def set_local
@local = Local.find(params[:id])   
end

def local_params
params.require(:local).permit(:business_address, :business_title, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_delivery, :business_number, :business_card, :total_scans, :business_image, :business_opening, :business_category, promotion_photos: [])
end
end