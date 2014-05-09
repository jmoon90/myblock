class Itinerary < ActiveRecord::Base
  has_many :locations,
    through: :plans,
    inverse_of: :itinerary
  has_many :plans
  has_many :plans,
    inverse_of: :itinerary

  validates_presence_of :title

  accepts_nested_attributes_for :locations
end
