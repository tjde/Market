class Listing < ApplicationRecord
  belongs_to :profile
  belongs_to :hobby
  has_many :profiles, through: :attendees
  has_many :profiles, through: :favorites
end
