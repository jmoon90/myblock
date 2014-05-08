class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.all
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.create(itinerary_params)
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:title, locations_attributes: [:address, :name])
  end
end
