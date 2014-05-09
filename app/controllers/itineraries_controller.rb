class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.all
  end

  def show
    @itinerary = Itinerary.find(params[:id])
    @locations = @itinerary.locations
  end

  def new
    @itinerary = Itinerary.new
    @itinerary.locations.build
  end

  def create
    @itinerary = Itinerary.create(itinerary_params)
    if @itinerary.save
      redirect_to root_path 
    else
      render new_itinerary_path
    end
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:title, locations_attributes: [:name, :address])
  end
end
