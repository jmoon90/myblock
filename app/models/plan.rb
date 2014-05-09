class Plan < ActiveRecord::Base
  belongs_to :itinerary,
    inverse_of: :plans
  belongs_to :location,
    inverse_of: :plans
end
