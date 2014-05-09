class PlansController < ApplicationController
  def create
    itinerary_id = params[:itinerary_id].to_i
    location_id = params[:location_id].to_i
    @plan = Plan.find_or_create_by(itinerary_id: itinerary_id, location_id: location_id)

    if @plan.save
      redirect_to root_path
    else
      render itinerary_path(itinerary_id)
    end
  end

  private

  def plans_params
    params.permit(:plan).require(:itinerary_id, :location_id)
  end
end
