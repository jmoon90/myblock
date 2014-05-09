class RemoveItineraryIdFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :itinerary_id
  end
end
