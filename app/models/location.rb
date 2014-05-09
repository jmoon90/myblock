class Location < ActiveRecord::Base
  has_many :itinerary,
    through: :plans,
    inverse_of: :locations
  has_many :plans
  has_many :plans,
    inverse_of: :location

  validates_presence_of :name
  validates_presence_of :address
end
