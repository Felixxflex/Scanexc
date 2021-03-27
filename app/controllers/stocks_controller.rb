class StocksController < ApplicationController
  
  
    def set_technologie
      @technologie = Technologie.find(params[:id])
    end
  
    def technologie_params
      params.permit(:title, :points, :description, :photo, :stock)
    end
  
    def update_points
  
    end
  
    def update
    @technologie = Technologie.find(params[:id])
      @technologie.stock -= 1 
      if @technologie.save
        redirect_to deliveryinformation_path(@user)
      else
        render :edit
      end
    end
    private
  
  
  
  end
  