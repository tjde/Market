class Listing < ApplicationRecord
  belongs_to :profile
  belongs_to :hobby
  enum equipment: [:yes, :no]
  has_many :attendees
  has_many :listing_attendees, source: :profile, through: :attendees
end
