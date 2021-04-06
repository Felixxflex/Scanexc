class RestaurantsController < ApplicationController

  def index
    if params[:search_by_business_title_and_business_description].nil? || params[:search_by_business_title_and_business_description].empty?
      @restaurants = Restaurant.all.order(name: :desc)
    else
      @restaurants = Restaurant.search_by_title_and_location(params[:search_by_business_title_and_business_description]).order(name: :desc)
    end
      @q = Restaurant.ransack(params[:q])
      @restaurants = @q.result
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
  params.require(:restaurant).permit(:business_address, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_delivery_service, :business_delivery, :business_number, :business_card, :total_scans, :business_image, :business_opening, :cusine, :delivery, :price, :business_category)
end
end
