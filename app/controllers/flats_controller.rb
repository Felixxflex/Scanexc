class FlatsController < ApplicationController
    before_action :set_flat, only: [:show, :edit, :update, :destroy]
    def index
      @flats = Flat.all
  
      # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
      @markers = @flats.geocoded.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude
        }
      end
    end

    def showend
    end

    def new
      @flats = Flat.new
    end

    def create
      @flat = Flat.new(flat_params)
  
      respond_to do |format|
        if @flat.save
          format.html { redirect_to @flat, notice: 'Flat was successfully created.' }
          format.json { render :show, status: :created, location: @flat }
        else
          format.html { render :new }
          format.json { render json: @flat.errors, status: :unprocessable_entity }
        end
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flat_params
      params.require(:flat).permit(:name, :address)
    end
end

