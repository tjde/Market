class Attendee < ApplicationRecord
  belongs_to :listing
  belongs_to :profile

  validates_uniqueness_of :listing_id, :scope => [:listing_id, :profile_id]
end
