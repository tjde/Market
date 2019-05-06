class Listing < ApplicationRecord
  belongs_to :profile
  belongs_to :hobby
  belongs_to :city
  enum equipment: [:yes, :no]
  has_many :attendees
  has_many :listing_attendees, source: :profile, through: :attendees
  has_many :favorites
  has_many :favorited, source: :profile, through: :favorites

  def self.search(search, city)
    if search and city
      hobby = Hobby.find_by(name: search)
      city == [""] ? city = false : city = City.find(city)
      if hobby and city
        self.where(hobby_id: hobby, city_id: city)
      elsif hobby
        self.where(hobby_id: hobby)
      elsif city
        self.where(city_id: city)
      else
        Listing.all
      end
    else
      Listing.all
    end
  end
end
