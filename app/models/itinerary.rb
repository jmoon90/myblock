class Itinerary < ActiveRecord::Base
  has_many :locations,
  inverse_of: :itinerary

  validates :title, presence: true

  accepts_nested_attributes_for :locations, :allow_destroy => true
end
