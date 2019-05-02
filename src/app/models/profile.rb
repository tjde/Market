class Profile < ApplicationRecord
    belongs_to :user
    enum gender: [:male, :female, :other]
    has_one_attached :picture
    has_many :listings
    has_many :favorites
    has_many :favorite_listings, source: :listing, through: :favorites
    has_many :attendees
    has_many :attended_listings, source: :listing, through: :attendees
end
