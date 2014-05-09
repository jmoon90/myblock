class ChangeItineraryToHavePlan < ActiveRecord::Migration
  def change
    remove_column :itineraries, :location_id
  end
end
