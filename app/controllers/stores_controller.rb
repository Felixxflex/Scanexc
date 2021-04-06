class StoresController < ApplicationController
   
  before_action :set_store, only: [:show]
  
  def index
    if params[:search_by_business_title_and_business_description].nil? || params[:search_by_business_title_and_business_description].empty?
      @stores = Store.all.order(name: :desc)
    else
      @stores = Store.search_by_title_and_location(params[:search_by_business_title_and_business_description]).order(name: :desc)
    end
      @q = Store.ransack(params[:q])
      @stores = @q.result
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

  def set_store
  @store = Store.find(params[:id])   
  end
  
  def store_params
  params.require(:store).permit(:business_address, :business_title, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_delivery, :business_number, :business_card, :total_scans, :business_image, :business_opening, :business_category, promotion_photos: [] )
  end
end