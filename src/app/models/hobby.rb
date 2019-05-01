class Hobby < ApplicationRecord
  belongs_to :category
  has_many :listings
  has_many :profiles, through: :current_hobbies
  has_many :profiles, through: :interests
end
