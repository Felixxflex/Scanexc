class OffersController < ApplicationController
    skip_before_action :authenticate_user!, :raise => false
    before_action :set_offer, only: [:show]
    http_basic_authenticate_with :name => 'FelixxFel', :password => 'Jordanshacker1710.shivflex.2020', only: :new
  

    def index
        @offers = Offer.all
    end

  
     
    def show
      
        
        
    end
  
    def new
      @offer = Offer.new()
    end
  
    
    
    def create
    
    @offer = Offer.new(offer_params)
      
      if @offer.save
        redirect_to offer_path(@offer)
      else
        render :new
    end
end

def destroy
  @offer.destroy
  redirect_to offers_path
end



  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

private

def set_offer
@offer = Offer.find(params[:id])   
end

def offer_params
params.require(:offer).permit(:title, :points, :description, :photo)
end

end