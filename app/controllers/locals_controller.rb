class LocalsController < ApplicationController
    def index

    end
    def new

    end
    def show
        
    end
    private

def set_gadget
@local = Gadget.find(params[:id])   
end

def gadget_params
params.require(:local).permit(:business_address, :business_description, :business_rating, :business_founding, :business_stores, :business_website, :business_number, :business_card, :total_scans, :business_image, :business_opening)
end
end