class Favorite < ApplicationRecord
  belongs_to :listing
  belongs_to :profile
end
