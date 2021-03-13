class RestaurantsController < ApplicationController

    def index
      @restaurants = Restaurant.all
      @search = params["search"]
      if @search.present?
        @business_title = @search["business_title"]
        @restaurants = Restaurant.where("business_title ILIKE ?", "%#{@business_title}%")
      end
      if params['search']
        @filter = params['search']['cusine'].concat(params['search']['price']).concat(params['search']['delivery']).flatten.reject(&:blank?)
        @restaurants = Restaurant.all.global_search("#{@filter}")
      else
        @restaurants = Restaurant.all
      end
      respond_to do |format|
        format.html
        format.js
      end
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
  params.require(:restaurant).permit(:business_address, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_delivery_service, :business_delivery, :business_number, :business_card, :total_scans, :business_image, :business_opening, :cusine, :delivery, :price)
end
end
