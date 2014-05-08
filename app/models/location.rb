class Location < ActiveRecord::Base
  belongs_to :itinerary,
  inverse_of: :locations

  validates :address, presence: true
  validates :name, presence: true
end
