class Hobby < ApplicationRecord
  belongs_to :category
  has_many :listings
  has_many :profiles, through: :current_hobbies
  has_many :interested_profiles, through: :interests, source: :profile
end
